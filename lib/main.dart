import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/theme/bloc/theme_bloc.dart';
import 'gen/strings.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BlocProvider(
    create: (_) => ThemeBloc(),
    child: TranslationProvider(
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          locale: TranslationProvider.of(context).flutterLocale,
          // use provider
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          debugShowCheckedModeBanner: false,
          title: t.appName,
          theme: state.themeData,
          home: Scaffold(),
        );
      },
    );
  }
}



