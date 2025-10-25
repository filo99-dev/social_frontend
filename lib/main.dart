import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:provider/provider.dart';
import 'package:social_architecture_example/config/provider_dependencies.dart';
import 'package:social_architecture_example/routing/router.dart';
import 'package:social_architecture_example/ui/core/themes/my_themes.dart';

void main() {
  usePathUrlStrategy();
  runApp(MultiProvider(providers: kApiLocalProviders, child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: kRouter(authRepository: context.read()),
      themeMode: ThemeMode.system,
      theme: MyThemes.light(),
      darkTheme: MyThemes.dark(),
    );
  }
}
