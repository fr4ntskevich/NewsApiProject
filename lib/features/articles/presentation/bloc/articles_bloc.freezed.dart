// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticlesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesEvent()';
}


}

/// @nodoc
class $ArticlesEventCopyWith<$Res>  {
$ArticlesEventCopyWith(ArticlesEvent _, $Res Function(ArticlesEvent) __);
}


/// Adds pattern-matching-related methods to [ArticlesEvent].
extension ArticlesEventPatterns on ArticlesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ArticlesFetched value)?  fetched,TResult Function( _ArticlesLoadMore value)?  loadMore,TResult Function( _ArticlesCategoryChanged value)?  categoryChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticlesFetched() when fetched != null:
return fetched(_that);case _ArticlesLoadMore() when loadMore != null:
return loadMore(_that);case _ArticlesCategoryChanged() when categoryChanged != null:
return categoryChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ArticlesFetched value)  fetched,required TResult Function( _ArticlesLoadMore value)  loadMore,required TResult Function( _ArticlesCategoryChanged value)  categoryChanged,}){
final _that = this;
switch (_that) {
case _ArticlesFetched():
return fetched(_that);case _ArticlesLoadMore():
return loadMore(_that);case _ArticlesCategoryChanged():
return categoryChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ArticlesFetched value)?  fetched,TResult? Function( _ArticlesLoadMore value)?  loadMore,TResult? Function( _ArticlesCategoryChanged value)?  categoryChanged,}){
final _that = this;
switch (_that) {
case _ArticlesFetched() when fetched != null:
return fetched(_that);case _ArticlesLoadMore() when loadMore != null:
return loadMore(_that);case _ArticlesCategoryChanged() when categoryChanged != null:
return categoryChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetched,TResult Function()?  loadMore,TResult Function( ArticlesCategory category)?  categoryChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticlesFetched() when fetched != null:
return fetched();case _ArticlesLoadMore() when loadMore != null:
return loadMore();case _ArticlesCategoryChanged() when categoryChanged != null:
return categoryChanged(_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetched,required TResult Function()  loadMore,required TResult Function( ArticlesCategory category)  categoryChanged,}) {final _that = this;
switch (_that) {
case _ArticlesFetched():
return fetched();case _ArticlesLoadMore():
return loadMore();case _ArticlesCategoryChanged():
return categoryChanged(_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetched,TResult? Function()?  loadMore,TResult? Function( ArticlesCategory category)?  categoryChanged,}) {final _that = this;
switch (_that) {
case _ArticlesFetched() when fetched != null:
return fetched();case _ArticlesLoadMore() when loadMore != null:
return loadMore();case _ArticlesCategoryChanged() when categoryChanged != null:
return categoryChanged(_that.category);case _:
  return null;

}
}

}

/// @nodoc


class _ArticlesFetched implements ArticlesEvent {
  const _ArticlesFetched();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesFetched);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesEvent.fetched()';
}


}




/// @nodoc


class _ArticlesLoadMore implements ArticlesEvent {
  const _ArticlesLoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesLoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesEvent.loadMore()';
}


}




/// @nodoc


class _ArticlesCategoryChanged implements ArticlesEvent {
  const _ArticlesCategoryChanged(this.category);
  

 final  ArticlesCategory category;

/// Create a copy of ArticlesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesCategoryChangedCopyWith<_ArticlesCategoryChanged> get copyWith => __$ArticlesCategoryChangedCopyWithImpl<_ArticlesCategoryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesCategoryChanged&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ArticlesEvent.categoryChanged(category: $category)';
}


}

/// @nodoc
abstract mixin class _$ArticlesCategoryChangedCopyWith<$Res> implements $ArticlesEventCopyWith<$Res> {
  factory _$ArticlesCategoryChangedCopyWith(_ArticlesCategoryChanged value, $Res Function(_ArticlesCategoryChanged) _then) = __$ArticlesCategoryChangedCopyWithImpl;
@useResult
$Res call({
 ArticlesCategory category
});




}
/// @nodoc
class __$ArticlesCategoryChangedCopyWithImpl<$Res>
    implements _$ArticlesCategoryChangedCopyWith<$Res> {
  __$ArticlesCategoryChangedCopyWithImpl(this._self, this._then);

  final _ArticlesCategoryChanged _self;
  final $Res Function(_ArticlesCategoryChanged) _then;

/// Create a copy of ArticlesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_ArticlesCategoryChanged(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ArticlesCategory,
  ));
}


}

/// @nodoc
mixin _$ArticlesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesState()';
}


}

/// @nodoc
class $ArticlesStateCopyWith<$Res>  {
$ArticlesStateCopyWith(ArticlesState _, $Res Function(ArticlesState) __);
}


/// Adds pattern-matching-related methods to [ArticlesState].
extension ArticlesStatePatterns on ArticlesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ArticlesInitial value)?  initial,TResult Function( _ArticlesLoading value)?  loading,TResult Function( _ArticlesLoaded value)?  loaded,TResult Function( _ArticlesLoadingMore value)?  loadingMore,TResult Function( _ArticlesError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticlesInitial() when initial != null:
return initial(_that);case _ArticlesLoading() when loading != null:
return loading(_that);case _ArticlesLoaded() when loaded != null:
return loaded(_that);case _ArticlesLoadingMore() when loadingMore != null:
return loadingMore(_that);case _ArticlesError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ArticlesInitial value)  initial,required TResult Function( _ArticlesLoading value)  loading,required TResult Function( _ArticlesLoaded value)  loaded,required TResult Function( _ArticlesLoadingMore value)  loadingMore,required TResult Function( _ArticlesError value)  error,}){
final _that = this;
switch (_that) {
case _ArticlesInitial():
return initial(_that);case _ArticlesLoading():
return loading(_that);case _ArticlesLoaded():
return loaded(_that);case _ArticlesLoadingMore():
return loadingMore(_that);case _ArticlesError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ArticlesInitial value)?  initial,TResult? Function( _ArticlesLoading value)?  loading,TResult? Function( _ArticlesLoaded value)?  loaded,TResult? Function( _ArticlesLoadingMore value)?  loadingMore,TResult? Function( _ArticlesError value)?  error,}){
final _that = this;
switch (_that) {
case _ArticlesInitial() when initial != null:
return initial(_that);case _ArticlesLoading() when loading != null:
return loading(_that);case _ArticlesLoaded() when loaded != null:
return loaded(_that);case _ArticlesLoadingMore() when loadingMore != null:
return loadingMore(_that);case _ArticlesError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Article> articles,  int totalResults,  int page)?  loaded,TResult Function( List<Article> articles,  int totalResults,  int page)?  loadingMore,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticlesInitial() when initial != null:
return initial();case _ArticlesLoading() when loading != null:
return loading();case _ArticlesLoaded() when loaded != null:
return loaded(_that.articles,_that.totalResults,_that.page);case _ArticlesLoadingMore() when loadingMore != null:
return loadingMore(_that.articles,_that.totalResults,_that.page);case _ArticlesError() when error != null:
return error(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Article> articles,  int totalResults,  int page)  loaded,required TResult Function( List<Article> articles,  int totalResults,  int page)  loadingMore,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case _ArticlesInitial():
return initial();case _ArticlesLoading():
return loading();case _ArticlesLoaded():
return loaded(_that.articles,_that.totalResults,_that.page);case _ArticlesLoadingMore():
return loadingMore(_that.articles,_that.totalResults,_that.page);case _ArticlesError():
return error(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Article> articles,  int totalResults,  int page)?  loaded,TResult? Function( List<Article> articles,  int totalResults,  int page)?  loadingMore,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _ArticlesInitial() when initial != null:
return initial();case _ArticlesLoading() when loading != null:
return loading();case _ArticlesLoaded() when loaded != null:
return loaded(_that.articles,_that.totalResults,_that.page);case _ArticlesLoadingMore() when loadingMore != null:
return loadingMore(_that.articles,_that.totalResults,_that.page);case _ArticlesError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _ArticlesInitial implements ArticlesState {
  const _ArticlesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesState.initial()';
}


}




/// @nodoc


class _ArticlesLoading implements ArticlesState {
  const _ArticlesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesState.loading()';
}


}




/// @nodoc


class _ArticlesLoaded implements ArticlesState {
  const _ArticlesLoaded({required final  List<Article> articles, required this.totalResults, required this.page}): _articles = articles;
  

 final  List<Article> _articles;
 List<Article> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}

 final  int totalResults;
 final  int page;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesLoadedCopyWith<_ArticlesLoaded> get copyWith => __$ArticlesLoadedCopyWithImpl<_ArticlesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesLoaded&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles),totalResults,page);

@override
String toString() {
  return 'ArticlesState.loaded(articles: $articles, totalResults: $totalResults, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ArticlesLoadedCopyWith<$Res> implements $ArticlesStateCopyWith<$Res> {
  factory _$ArticlesLoadedCopyWith(_ArticlesLoaded value, $Res Function(_ArticlesLoaded) _then) = __$ArticlesLoadedCopyWithImpl;
@useResult
$Res call({
 List<Article> articles, int totalResults, int page
});




}
/// @nodoc
class __$ArticlesLoadedCopyWithImpl<$Res>
    implements _$ArticlesLoadedCopyWith<$Res> {
  __$ArticlesLoadedCopyWithImpl(this._self, this._then);

  final _ArticlesLoaded _self;
  final $Res Function(_ArticlesLoaded) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,Object? totalResults = null,Object? page = null,}) {
  return _then(_ArticlesLoaded(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ArticlesLoadingMore implements ArticlesState {
  const _ArticlesLoadingMore({required final  List<Article> articles, required this.totalResults, required this.page}): _articles = articles;
  

 final  List<Article> _articles;
 List<Article> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}

 final  int totalResults;
 final  int page;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesLoadingMoreCopyWith<_ArticlesLoadingMore> get copyWith => __$ArticlesLoadingMoreCopyWithImpl<_ArticlesLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesLoadingMore&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles),totalResults,page);

@override
String toString() {
  return 'ArticlesState.loadingMore(articles: $articles, totalResults: $totalResults, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ArticlesLoadingMoreCopyWith<$Res> implements $ArticlesStateCopyWith<$Res> {
  factory _$ArticlesLoadingMoreCopyWith(_ArticlesLoadingMore value, $Res Function(_ArticlesLoadingMore) _then) = __$ArticlesLoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<Article> articles, int totalResults, int page
});




}
/// @nodoc
class __$ArticlesLoadingMoreCopyWithImpl<$Res>
    implements _$ArticlesLoadingMoreCopyWith<$Res> {
  __$ArticlesLoadingMoreCopyWithImpl(this._self, this._then);

  final _ArticlesLoadingMore _self;
  final $Res Function(_ArticlesLoadingMore) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,Object? totalResults = null,Object? page = null,}) {
  return _then(_ArticlesLoadingMore(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ArticlesError implements ArticlesState {
  const _ArticlesError({required this.failure});
  

 final  Failure failure;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesErrorCopyWith<_ArticlesError> get copyWith => __$ArticlesErrorCopyWithImpl<_ArticlesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'ArticlesState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ArticlesErrorCopyWith<$Res> implements $ArticlesStateCopyWith<$Res> {
  factory _$ArticlesErrorCopyWith(_ArticlesError value, $Res Function(_ArticlesError) _then) = __$ArticlesErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$ArticlesErrorCopyWithImpl<$Res>
    implements _$ArticlesErrorCopyWith<$Res> {
  __$ArticlesErrorCopyWithImpl(this._self, this._then);

  final _ArticlesError _self;
  final $Res Function(_ArticlesError) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_ArticlesError(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
