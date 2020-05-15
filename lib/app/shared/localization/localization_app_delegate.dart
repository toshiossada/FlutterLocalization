import 'package:flutter/material.dart';
import 'localizations_app.dart';

class LocalizationsAppDelegate extends LocalizationsDelegate<LocalizationsApp> {
  static List<String> supported = ['pt', 'en'];
  const LocalizationsAppDelegate();

  @override
  bool isSupported(Locale locale) {
    return supported.contains(locale.languageCode);
  }

  @override
  Future<LocalizationsApp> load(Locale locale) async {
    var localizations = LocalizationsApp(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<LocalizationsApp> old) => false;
}
