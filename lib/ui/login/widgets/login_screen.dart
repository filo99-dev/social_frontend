import 'package:flutter/material.dart';
import 'package:social_architecture_example/ui/login/login_viewmodel/login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.loginViewmodel});
  final LoginViewmodel loginViewmodel;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {},
                ),
              ),
            ),
            ListenableBuilder(
              listenable: widget.loginViewmodel.command,
              builder: (context, _) {
                return ElevatedButton(
                  onPressed: widget.loginViewmodel.command.execute,
                  child: Text('login'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.loginViewmodel.addListener(_onViewModelChanged);
  }

  @override
  void dispose() {
    super.dispose();
    widget.loginViewmodel.removeListener(_onViewModelChanged);
  }

  void _onViewModelChanged() {
    if (widget.loginViewmodel.command.error != null) {
      widget.loginViewmodel.command.clearState();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(widget.loginViewmodel.command.error!.toString()),
        ),
      );
      return;
    }
    if (widget.loginViewmodel.command.completed) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('leskere loign success')));
      return;
    }
  }
}
