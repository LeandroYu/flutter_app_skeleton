import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/app_routes.dart';
import 'config/utils/main_utils.dart';
import 'shared/design_system/custom_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainUtils.configApp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: const <Locale>[
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: DSColors.primary,
          backgroundColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(backgroundColor: DSColors.primary),
        textTheme: GoogleFonts.cabinTextTheme(),
        primaryColor: DSColors.primary,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}
