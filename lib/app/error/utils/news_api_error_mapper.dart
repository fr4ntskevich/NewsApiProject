import 'package:news_api_project/app/error/exceptions.dart';
import 'package:news_api_project/app/error/failures.dart';

abstract final class NewsApiErrorMapper {
  static Failure fromServerException(ServerException exception) {
    return switch (exception.statusCode) {
      400 => BadRequestFailure(exception.message),
      401 => UnauthorizedFailure(exception.message),
      429 => RateLimitFailure(exception.message),
      500 => ServerFailure(exception.message),
      _ => ServerFailure(exception.message),
    };
  }
}
