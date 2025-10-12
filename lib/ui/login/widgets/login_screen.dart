import 'package:flutter/material.dart';
import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/ui/login/login_viewmodel/login_viewmodel.dart';
import 'package:social_architecture_example/utils/result.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formStateKey,
          child: Column(
            children: [
              FormField<String>(
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'inserisci uno username'
                            : null,
                builder:
                    (state) => TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        errorText: state.errorText,
                        labelText: 'username',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
              ),
              FormField<String>(
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'inserisci una password'
                            : null,
                builder:
                    (state) => TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        errorText: state.errorText,
                        labelText: 'password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                    ),
              ),
              ListenableBuilder(
                listenable: widget.loginViewmodel.loginCommand,
                builder: (context, _) {
                  if (widget.loginViewmodel.loginCommand.running) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return ElevatedButton(
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
                  );
                },
              ),
            ],
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
