import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api_project/core/domain/article.dart';

part 'favorite_article_model.freezed.dart';
part 'favorite_article_model.g.dart';

@freezed
abstract class FavoriteArticleModel with _$FavoriteArticleModel {
  const FavoriteArticleModel._();

  const factory FavoriteArticleModel({
    required String title,
    required String subtitle,
    required String source,
    required String imgUrl,
    required String publishedAt,
  }) = _FavoriteArticleModel;

  factory FavoriteArticleModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteArticleModelFromJson(json);

  factory FavoriteArticleModel.fromEntity(Article article) =>
      FavoriteArticleModel(
        title: article.title,
        subtitle: article.subtitle,
        source: article.source,
        imgUrl: article.imgUrl,
        publishedAt: article.publishedAt.toIso8601String(),
      );

  Article toEntity() => Article(
        title: title,
        subtitle: subtitle,
        source: source,
        imgUrl: imgUrl,
        publishedAt: DateTime.parse(publishedAt),
      );
}
