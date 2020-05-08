import 'package:flutter/widgets.dart';
import 'package:internatization/app/shared/localization/localizations_app.dart';

class TranslateApp {
  final BuildContext context;

  TranslateApp(this.context);

  String text(String key) => LocalizationsApp.of(context).translate(key);
}
