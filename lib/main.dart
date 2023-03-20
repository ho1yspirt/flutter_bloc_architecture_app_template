import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_architecture_app_template/features/example/bloc/example_bloc.dart';
import 'package:flutter_bloc_architecture_app_template/features/example/pages/example_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc_architecture_app_template/generated/l10n.dart';
import 'package:flutter_bloc_architecture_app_template/network/dio_client.dart';
import 'package:flutter_bloc_architecture_app_template/ui/res.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Pattern Architecture Template',
      showSemanticsDebugger: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      //TODO: specify theme
      themeMode: ThemeMode.system,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => DioClient(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ExampleBloc(
                  // repo: RepositoryProvider.of<ExampleRepo>(context),
                  ),
            ),
          ],
          child: const ExamplePage(),
        ),
      ),
    );
  }
}
