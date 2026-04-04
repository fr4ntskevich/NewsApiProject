import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api_project/presentation/features/home/domain/entities/article.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
abstract class TopHeadlinesResponseModel with _$TopHeadlinesResponseModel {
  const factory TopHeadlinesResponseModel({
    required String status,
    required int totalResults,
    required List<ArticleModel> articles,
  }) = _TopHeadlinesResponseModel;

  factory TopHeadlinesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesResponseModelFromJson(json);
}

@freezed
abstract class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    required SourceModel source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

@freezed
abstract class SourceModel with _$SourceModel {
  const factory SourceModel({
    String? id,
    String? name,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
}

extension ArticleModelX on ArticleModel {
  Article toEntity() => Article(
        title: title ?? '',
        subtitle: description ?? '',
        source: source.name ?? '',
        imgUrl: urlToImage ?? '',
        publishedAt: publishedAt != null ? DateTime.tryParse(publishedAt!) : null,
      );
}
