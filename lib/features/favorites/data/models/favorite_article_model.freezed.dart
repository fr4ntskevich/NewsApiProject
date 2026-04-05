// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteArticleModel {

 String get title; String get subtitle; String get source; String get imgUrl; String get publishedAt;
/// Create a copy of FavoriteArticleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteArticleModelCopyWith<FavoriteArticleModel> get copyWith => _$FavoriteArticleModelCopyWithImpl<FavoriteArticleModel>(this as FavoriteArticleModel, _$identity);

  /// Serializes this FavoriteArticleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteArticleModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.source, source) || other.source == source)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,source,imgUrl,publishedAt);

@override
String toString() {
  return 'FavoriteArticleModel(title: $title, subtitle: $subtitle, source: $source, imgUrl: $imgUrl, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteArticleModelCopyWith<$Res>  {
  factory $FavoriteArticleModelCopyWith(FavoriteArticleModel value, $Res Function(FavoriteArticleModel) _then) = _$FavoriteArticleModelCopyWithImpl;
@useResult
$Res call({
 String title, String subtitle, String source, String imgUrl, String publishedAt
});




}
/// @nodoc
class _$FavoriteArticleModelCopyWithImpl<$Res>
    implements $FavoriteArticleModelCopyWith<$Res> {
  _$FavoriteArticleModelCopyWithImpl(this._self, this._then);

  final FavoriteArticleModel _self;
  final $Res Function(FavoriteArticleModel) _then;

/// Create a copy of FavoriteArticleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? subtitle = null,Object? source = null,Object? imgUrl = null,Object? publishedAt = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,imgUrl: null == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteArticleModel].
extension FavoriteArticleModelPatterns on FavoriteArticleModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteArticleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteArticleModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteArticleModel value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteArticleModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteArticleModel value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteArticleModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String subtitle,  String source,  String imgUrl,  String publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteArticleModel() when $default != null:
return $default(_that.title,_that.subtitle,_that.source,_that.imgUrl,_that.publishedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String subtitle,  String source,  String imgUrl,  String publishedAt)  $default,) {final _that = this;
switch (_that) {
case _FavoriteArticleModel():
return $default(_that.title,_that.subtitle,_that.source,_that.imgUrl,_that.publishedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String subtitle,  String source,  String imgUrl,  String publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteArticleModel() when $default != null:
return $default(_that.title,_that.subtitle,_that.source,_that.imgUrl,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteArticleModel extends FavoriteArticleModel {
  const _FavoriteArticleModel({required this.title, required this.subtitle, required this.source, required this.imgUrl, required this.publishedAt}): super._();
  factory _FavoriteArticleModel.fromJson(Map<String, dynamic> json) => _$FavoriteArticleModelFromJson(json);

@override final  String title;
@override final  String subtitle;
@override final  String source;
@override final  String imgUrl;
@override final  String publishedAt;

/// Create a copy of FavoriteArticleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteArticleModelCopyWith<_FavoriteArticleModel> get copyWith => __$FavoriteArticleModelCopyWithImpl<_FavoriteArticleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteArticleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteArticleModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.source, source) || other.source == source)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,source,imgUrl,publishedAt);

@override
String toString() {
  return 'FavoriteArticleModel(title: $title, subtitle: $subtitle, source: $source, imgUrl: $imgUrl, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteArticleModelCopyWith<$Res> implements $FavoriteArticleModelCopyWith<$Res> {
  factory _$FavoriteArticleModelCopyWith(_FavoriteArticleModel value, $Res Function(_FavoriteArticleModel) _then) = __$FavoriteArticleModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String subtitle, String source, String imgUrl, String publishedAt
});




}
/// @nodoc
class __$FavoriteArticleModelCopyWithImpl<$Res>
    implements _$FavoriteArticleModelCopyWith<$Res> {
  __$FavoriteArticleModelCopyWithImpl(this._self, this._then);

  final _FavoriteArticleModel _self;
  final $Res Function(_FavoriteArticleModel) _then;

/// Create a copy of FavoriteArticleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtitle = null,Object? source = null,Object? imgUrl = null,Object? publishedAt = null,}) {
  return _then(_FavoriteArticleModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,imgUrl: null == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
