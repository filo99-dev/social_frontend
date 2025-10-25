import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:social_architecture_example/data/repositories/auth/auth_repository.dart';
import 'package:social_architecture_example/data/services/auth/auth_service.dart';
import 'package:social_architecture_example/data/services/shared_preferences/my_shared_preferences.dart';
import 'package:social_architecture_example/ui/login/login_viewmodel/login_viewmodel.dart';
import 'package:social_architecture_example/ui/register/register_viewmodel/register_viewmodel.dart';

List<SingleChildWidget> get kApiLocalProviders {
  return [
    Provider(create: (context) => AuthService()),
    Provider(create: (context) => MySharedPreferences()),
    ChangeNotifierProvider(
      lazy: true,
      create:
          (context) => AuthRepository(
            authService: context.read(),
            sharedPreferencesService: context.read(),
          ),
    ),
    Provider(
      lazy: true,
      create: (context) => LoginViewmodel(authRepository: context.read()),
    ),
    Provider(
      lazy: true,
      create: (context) => RegisterViewmodel(authRepository: context.read()),
    ),
  ];
}
