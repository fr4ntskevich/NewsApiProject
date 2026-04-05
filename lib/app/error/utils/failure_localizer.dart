import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/app/l10n/app_localizations.dart';

extension FailureLocalizer on Failure {
  String localizedMessage(AppLocalizations l10n) => switch (this) {
        BadRequestFailure() => l10n.errorBadRequest,
        UnauthorizedFailure() => l10n.errorUnauthorized,
        RateLimitFailure() => l10n.errorRateLimit,
        ServerFailure() => l10n.errorServer,
        CacheFailure() => l10n.errorCache,
        NetworkFailure() => l10n.errorNetwork,
        ValidationFailure() => l10n.errorValidation,
        _ => message,
      };
}
