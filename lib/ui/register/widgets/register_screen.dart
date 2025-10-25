import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:social_architecture_example/data/models/requests/auth/register_dto/register_dto.dart';
import 'package:social_architecture_example/data/repositories/auth/auth_repository.dart';
import 'package:social_architecture_example/routing/routes.dart';
import 'package:social_architecture_example/ui/core/themes/dimens.dart';
import 'package:social_architecture_example/ui/core/widgets/custom_elevated_button.dart';
import 'package:social_architecture_example/ui/login/login_viewmodel/login_viewmodel.dart';
import 'package:social_architecture_example/ui/login/widgets/login_screen.dart';
import 'package:social_architecture_example/ui/register/register_viewmodel/register_viewmodel.dart';
import 'package:social_architecture_example/utils/result.dart';
import 'package:social_architecture_example/utils/widget_sizes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, required this.registerViewmodel});
  final RegisterViewmodel registerViewmodel;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formStateKey = GlobalKey<FormState>(debugLabel: 'register_form');
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  Timer? _debouncer;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final formSize = WidgetSizes(context).standardFormSize;
    return Scaffold(
      body: Center(
        child: Form(
          key: _formStateKey,
          child: SingleChildScrollView(
            child: Container(
              width: formSize,
              padding: Dimens.of(context).edgeInsetsScreenSymmetric,
              child: Column(
                children: [
                  Image.asset(
                    'assets/logos/dashatar.png',
                    width: formSize / 2.5,
                  ),
                  ListenableBuilder(
                    listenable: widget.registerViewmodel.checkUsernameCommand,
                    builder: (ctx, _) {
                      return TextFormField(
                        onChanged: _debounce,
                        validator:
                            (value) =>
                                value == null || value.isEmpty
                                    ? 'inserire lo username'
                                    : null,
                        controller: usernameController,
                        decoration: InputDecoration(
                          errorText:
                              widget
                                      .registerViewmodel
                                      .checkUsernameCommand
                                      .error
                                  ? 'username già in uso'
                                  : null,
                          labelText: 'username',
                          prefixIcon: Icon(Icons.person),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: Dimens.paddingVertical),
                  TextFormField(
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'inserire un\'email'
                                : null,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'email',
                      prefixIcon: Icon(Icons.alternate_email),
                    ),
                  ),
                  const SizedBox(height: Dimens.paddingVertical),
                  TextFormField(
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'inserire un numero di telefono'
                                : null,
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      labelText: 'n. di telefono',
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  const SizedBox(height: Dimens.paddingVertical),
                  TextFormField(
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'inserire la password'
                                : null,
                    controller: passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'password',

                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: Dimens.paddingVertical),
                  ListenableBuilder(
                    listenable: widget.registerViewmodel.registerCommand,
                    builder: (context, _) {
                      if (widget.registerViewmodel.registerCommand.running) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return SizedBox(
                        width: formSize,
                        child: CustomElevatedButton(
                          onPressed: () async {
                            // if (_formStateKey.currentState!.validate()) {
                            await widget.registerViewmodel.registerCommand
                                .execute(
                                  RegisterDto(
                                    username: usernameController.text,
                                    password: passwordController.text,
                                    email: emailController.text,
                                    phoneNumber: phoneNumberController.text,
                                  ),
                                );
                            return;
                            // }
                          },
                          child: const Text('registrati'),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: Dimens.paddingVertical),
                  TextButton(
                    style: TextButton.styleFrom(),
                    child: Text('accedi'),
                    onPressed: () {
                      context.go(Routes.login);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.registerViewmodel.registerCommand.removeListener(_onResult);
    _debouncer?.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant RegisterScreen oldWidget) {
    oldWidget.registerViewmodel.registerCommand.removeListener(_onResult);
    widget.registerViewmodel.registerCommand.addListener(_onResult);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    widget.registerViewmodel.registerCommand.addListener(_onResult);
    super.initState();
  }

  void _debounce(String value) {
    if (value.isEmpty) {
      return;
    }
    if (_debouncer?.isActive ?? false) {
      _debouncer?.cancel();
    }
    _debouncer = Timer(Duration(milliseconds: 600), () {
      widget.registerViewmodel.checkUsernameCommand.execute(
        usernameController.text,
      );
    });
  }

  void _onResult() {
    if (widget.registerViewmodel.registerCommand.error) {
      final resultError =
          widget.registerViewmodel.registerCommand.result as Err;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(resultError.error.toString())));
    }
    if (widget.registerViewmodel.registerCommand.completed) {
      widget.registerViewmodel.registerCommand.clearResult();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('registrazione effettuata')));
    }
  }
}
