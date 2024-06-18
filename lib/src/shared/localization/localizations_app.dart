import 'dart:convert';

import 'package:app_modular/src/shared/localization/localization_app_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalizationsApp {
  final Locale locale;
  Map<String, String>? localizationString;

  LocalizationsApp(this.locale, {this.localizationString});

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    localizationString = jsonMap.map((key, value) => MapEntry(key, value.toString()));

    return true;
  }

  String? translate(String key) {
    return localizationString?[key];
  }

  static LocalizationsApp of(BuildContext context) {
    return Localizations.of(context, LocalizationsApp);
  }

  static const LocalizationsDelegate delegate = LocalizationAppDelegate();
}