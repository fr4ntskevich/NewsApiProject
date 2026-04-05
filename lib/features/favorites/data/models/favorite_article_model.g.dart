// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteArticleModel _$FavoriteArticleModelFromJson(
  Map<String, dynamic> json,
) => _FavoriteArticleModel(
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  source: json['source'] as String,
  imgUrl: json['imgUrl'] as String,
  publishedAt: json['publishedAt'] as String,
);

Map<String, dynamic> _$FavoriteArticleModelToJson(
  _FavoriteArticleModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'source': instance.source,
  'imgUrl': instance.imgUrl,
  'publishedAt': instance.publishedAt,
};
