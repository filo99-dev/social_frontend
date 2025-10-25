import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:social_architecture_example/data/repositories/auth/auth_repository.dart';
import 'package:social_architecture_example/routing/routes.dart';
import 'package:social_architecture_example/ui/login/widgets/login_screen.dart';
import 'package:social_architecture_example/ui/register/widgets/register_screen.dart';

GoRouter kRouter({required AuthRepository authRepository}) => GoRouter(
  initialLocation: Routes.home,
  debugLogDiagnostics: true,
  refreshListenable: authRepository,
  redirect: _redirect,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginScreen(loginViewmodel: context.read()),
    ),
    GoRoute(
      path: Routes.registration,
      builder:
          (context, state) => RegisterScreen(registerViewmodel: context.read()),
    ),
    GoRoute(path: Routes.home, builder: (context, _) => Placeholder()),
  ],
);
Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  final loggingIn = state.matchedLocation == Routes.login;
  final registering = state.matchedLocation == Routes.registration;
  if(!loggedIn&&registering)
  {
    return null;
  }
  if (!loggedIn) {
    return Routes.login;
  }
  if (loggingIn) {
    return Routes.home;
  }
  return null;
}
