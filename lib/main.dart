import 'package:env_setup/api_model.dart';
import 'package:env_setup/app_config.dart';
import 'package:env_setup/hello_word.dart';
import 'package:flutter/material.dart';

void main({String? env}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final appConfig = await AppConfig().forEnvironment(env);
  runApp(MyApp(
    config: appConfig,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required ApiBaseUrlModel config});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloWordScreen(),
    );
  }
}
