import 'package:flutter/material.dart';
import 'package:news_api_project/l10n/app_localizations.dart';

extension ContextExtensions on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
}
