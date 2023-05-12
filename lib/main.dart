import 'package:flutter_bloc_architecture_app_template/core/network/network.dart';
import 'package:flutter_bloc_architecture_app_template/core/ui/ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//* features
import 'package:flutter_bloc_architecture_app_template/features/features.dart';

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
      themeMode: ThemeMode.system,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => DioClient(),
          ),
          RepositoryProvider(
            create: (context) => ExampleRepo(
              dio: RepositoryProvider.of<DioClient>(context).dio,
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ExampleBloc(
                repo: RepositoryProvider.of<ExampleRepo>(context),
              ),
            ),
          ],
          child: const Scaffold(),
        ),
      ),
    );
  }
}
