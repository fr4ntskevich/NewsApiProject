import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
abstract class Article with _$Article {
  const factory Article({
    required String title,
    required String subtitle,
    required String source,
    required String imgUrl,
    DateTime? publishedAt,
  }) = _Article;
}
