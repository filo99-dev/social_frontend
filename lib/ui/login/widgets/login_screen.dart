import 'package:flutter/material.dart';
import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/ui/core/themes/dimens.dart';
import 'package:social_architecture_example/ui/login/login_viewmodel/login_viewmodel.dart';
import 'package:social_architecture_example/utils/result.dart';
import 'package:social_architecture_example/utils/widget_sizes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.loginViewmodel});
  final LoginViewmodel loginViewmodel;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _formStateKey = GlobalKey<FormState>(debugLabel: 'login_form');
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final formSize = WidgetSizes(context).loginFormSize;
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
                  TextFormField(
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'inserire lo username'
                                : null,
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'username',
                      prefixIcon: Icon(Icons.person),
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
                    listenable: widget.loginViewmodel.loginCommand,
                    builder: (context, _) {
                      if (widget.loginViewmodel.loginCommand.running) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return SizedBox(
                        width: formSize * 0.3,
                        child: ElevatedButton(
                          onPressed: () async {
                            // if (_formStateKey.currentState!.validate()) {
                            await widget.loginViewmodel.loginCommand.execute(
                              LoginDto(
                                username: usernameController.text,
                                password: passwordController.text,
                              ),
                            );
                            return;
                            // }
                          },
                          child: Text('login'),
                        ),
                      );
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
  void didUpdateWidget(covariant LoginScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.loginViewmodel.loginCommand.removeListener(_onResult);
    widget.loginViewmodel.loginCommand.addListener(_onResult);
  }

  @override
  void initState() {
    super.initState();
    _obscureText = true;
    widget.loginViewmodel.loginCommand.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.loginViewmodel.loginCommand.removeListener(_onResult);
    super.dispose();
  }

  void _onResult() {
    if (widget.loginViewmodel.loginCommand.error) {
      final errorType =
          (widget.loginViewmodel.loginCommand.result as Err).error;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(errorType.toString())));
      return;
    }
    if (widget.loginViewmodel.loginCommand.completed) {
      widget.loginViewmodel.loginCommand.clearResult();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('leskere loign success')));
      return;
    }
  }
}
