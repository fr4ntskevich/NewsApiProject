import 'package:flutter/material.dart';
import 'package:news_api_project/app/l10n/app_localizations.dart';

extension L10nUtils on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
