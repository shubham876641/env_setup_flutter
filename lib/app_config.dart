import 'dart:convert';
import 'dart:developer';
import 'package:env_setup/api_model.dart';
import 'package:flutter/services.dart';


class AppConfig {
  final ApiBaseUrlModel? apiBaseUrlModel;
  AppConfig({this.apiBaseUrlModel});

  Future<ApiBaseUrlModel> forEnvironment(String? env) async {
    env = env ?? 'dev';
    log(env);

    final contents = await rootBundle.loadString(
      'assets/env/$env.json',
    );
    final decodeJson = json.decode(contents);
    return ApiBaseUrlModel.fromJson(decodeJson);
  }
}
