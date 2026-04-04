// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeFetched value)?  fetched,TResult Function( _HomeLoadMore value)?  loadMore,TResult Function( _HomeCategoryChanged value)?  categoryChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeFetched() when fetched != null:
return fetched(_that);case _HomeLoadMore() when loadMore != null:
return loadMore(_that);case _HomeCategoryChanged() when categoryChanged != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeFetched value)  fetched,required TResult Function( _HomeLoadMore value)  loadMore,required TResult Function( _HomeCategoryChanged value)  categoryChanged,}){
final _that = this;
switch (_that) {
case _HomeFetched():
return fetched(_that);case _HomeLoadMore():
return loadMore(_that);case _HomeCategoryChanged():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeFetched value)?  fetched,TResult? Function( _HomeLoadMore value)?  loadMore,TResult? Function( _HomeCategoryChanged value)?  categoryChanged,}){
final _that = this;
switch (_that) {
case _HomeFetched() when fetched != null:
return fetched(_that);case _HomeLoadMore() when loadMore != null:
return loadMore(_that);case _HomeCategoryChanged() when categoryChanged != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetched,TResult Function()?  loadMore,TResult Function( NewsCategory category)?  categoryChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeFetched() when fetched != null:
return fetched();case _HomeLoadMore() when loadMore != null:
return loadMore();case _HomeCategoryChanged() when categoryChanged != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetched,required TResult Function()  loadMore,required TResult Function( NewsCategory category)  categoryChanged,}) {final _that = this;
switch (_that) {
case _HomeFetched():
return fetched();case _HomeLoadMore():
return loadMore();case _HomeCategoryChanged():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetched,TResult? Function()?  loadMore,TResult? Function( NewsCategory category)?  categoryChanged,}) {final _that = this;
switch (_that) {
case _HomeFetched() when fetched != null:
return fetched();case _HomeLoadMore() when loadMore != null:
return loadMore();case _HomeCategoryChanged() when categoryChanged != null:
return categoryChanged(_that.category);case _:
  return null;

}
}

}

/// @nodoc


class _HomeFetched implements HomeEvent {
  const _HomeFetched();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeFetched);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetched()';
}


}




/// @nodoc


class _HomeLoadMore implements HomeEvent {
  const _HomeLoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeLoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadMore()';
}


}




/// @nodoc


class _HomeCategoryChanged implements HomeEvent {
  const _HomeCategoryChanged(this.category);
  

 final  NewsCategory category;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeCategoryChangedCopyWith<_HomeCategoryChanged> get copyWith => __$HomeCategoryChangedCopyWithImpl<_HomeCategoryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeCategoryChanged&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'HomeEvent.categoryChanged(category: $category)';
}


}

/// @nodoc
abstract mixin class _$HomeCategoryChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$HomeCategoryChangedCopyWith(_HomeCategoryChanged value, $Res Function(_HomeCategoryChanged) _then) = __$HomeCategoryChangedCopyWithImpl;
@useResult
$Res call({
 NewsCategory category
});




}
/// @nodoc
class __$HomeCategoryChangedCopyWithImpl<$Res>
    implements _$HomeCategoryChangedCopyWith<$Res> {
  __$HomeCategoryChangedCopyWithImpl(this._self, this._then);

  final _HomeCategoryChanged _self;
  final $Res Function(_HomeCategoryChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_HomeCategoryChanged(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NewsCategory,
  ));
}


}

/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeInitial value)?  initial,TResult Function( _HomeLoading value)?  loading,TResult Function( _HomeLoaded value)?  loaded,TResult Function( _HomeLoadingMore value)?  loadingMore,TResult Function( _HomeError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial(_that);case _HomeLoading() when loading != null:
return loading(_that);case _HomeLoaded() when loaded != null:
return loaded(_that);case _HomeLoadingMore() when loadingMore != null:
return loadingMore(_that);case _HomeError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeInitial value)  initial,required TResult Function( _HomeLoading value)  loading,required TResult Function( _HomeLoaded value)  loaded,required TResult Function( _HomeLoadingMore value)  loadingMore,required TResult Function( _HomeError value)  error,}){
final _that = this;
switch (_that) {
case _HomeInitial():
return initial(_that);case _HomeLoading():
return loading(_that);case _HomeLoaded():
return loaded(_that);case _HomeLoadingMore():
return loadingMore(_that);case _HomeError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeInitial value)?  initial,TResult? Function( _HomeLoading value)?  loading,TResult? Function( _HomeLoaded value)?  loaded,TResult? Function( _HomeLoadingMore value)?  loadingMore,TResult? Function( _HomeError value)?  error,}){
final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial(_that);case _HomeLoading() when loading != null:
return loading(_that);case _HomeLoaded() when loaded != null:
return loaded(_that);case _HomeLoadingMore() when loadingMore != null:
return loadingMore(_that);case _HomeError() when error != null:
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
case _HomeInitial() when initial != null:
return initial();case _HomeLoading() when loading != null:
return loading();case _HomeLoaded() when loaded != null:
return loaded(_that.articles,_that.totalResults,_that.page);case _HomeLoadingMore() when loadingMore != null:
return loadingMore(_that.articles,_that.totalResults,_that.page);case _HomeError() when error != null:
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
case _HomeInitial():
return initial();case _HomeLoading():
return loading();case _HomeLoaded():
return loaded(_that.articles,_that.totalResults,_that.page);case _HomeLoadingMore():
return loadingMore(_that.articles,_that.totalResults,_that.page);case _HomeError():
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
case _HomeInitial() when initial != null:
return initial();case _HomeLoading() when loading != null:
return loading();case _HomeLoaded() when loaded != null:
return loaded(_that.articles,_that.totalResults,_that.page);case _HomeLoadingMore() when loadingMore != null:
return loadingMore(_that.articles,_that.totalResults,_that.page);case _HomeError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _HomeInitial implements HomeState {
  const _HomeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _HomeLoading implements HomeState {
  const _HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class _HomeLoaded implements HomeState {
  const _HomeLoaded({required final  List<Article> articles, required this.totalResults, required this.page}): _articles = articles;
  

 final  List<Article> _articles;
 List<Article> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}

 final  int totalResults;
 final  int page;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeLoadedCopyWith<_HomeLoaded> get copyWith => __$HomeLoadedCopyWithImpl<_HomeLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeLoaded&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles),totalResults,page);

@override
String toString() {
  return 'HomeState.loaded(articles: $articles, totalResults: $totalResults, page: $page)';
}


}

/// @nodoc
abstract mixin class _$HomeLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeLoadedCopyWith(_HomeLoaded value, $Res Function(_HomeLoaded) _then) = __$HomeLoadedCopyWithImpl;
@useResult
$Res call({
 List<Article> articles, int totalResults, int page
});




}
/// @nodoc
class __$HomeLoadedCopyWithImpl<$Res>
    implements _$HomeLoadedCopyWith<$Res> {
  __$HomeLoadedCopyWithImpl(this._self, this._then);

  final _HomeLoaded _self;
  final $Res Function(_HomeLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,Object? totalResults = null,Object? page = null,}) {
  return _then(_HomeLoaded(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _HomeLoadingMore implements HomeState {
  const _HomeLoadingMore({required final  List<Article> articles, required this.totalResults, required this.page}): _articles = articles;
  

 final  List<Article> _articles;
 List<Article> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}

 final  int totalResults;
 final  int page;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeLoadingMoreCopyWith<_HomeLoadingMore> get copyWith => __$HomeLoadingMoreCopyWithImpl<_HomeLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeLoadingMore&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles),totalResults,page);

@override
String toString() {
  return 'HomeState.loadingMore(articles: $articles, totalResults: $totalResults, page: $page)';
}


}

/// @nodoc
abstract mixin class _$HomeLoadingMoreCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeLoadingMoreCopyWith(_HomeLoadingMore value, $Res Function(_HomeLoadingMore) _then) = __$HomeLoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<Article> articles, int totalResults, int page
});




}
/// @nodoc
class __$HomeLoadingMoreCopyWithImpl<$Res>
    implements _$HomeLoadingMoreCopyWith<$Res> {
  __$HomeLoadingMoreCopyWithImpl(this._self, this._then);

  final _HomeLoadingMore _self;
  final $Res Function(_HomeLoadingMore) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,Object? totalResults = null,Object? page = null,}) {
  return _then(_HomeLoadingMore(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _HomeError implements HomeState {
  const _HomeError({required this.failure});
  

 final  Failure failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeErrorCopyWith<_HomeError> get copyWith => __$HomeErrorCopyWithImpl<_HomeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'HomeState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$HomeErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeErrorCopyWith(_HomeError value, $Res Function(_HomeError) _then) = __$HomeErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$HomeErrorCopyWithImpl<$Res>
    implements _$HomeErrorCopyWith<$Res> {
  __$HomeErrorCopyWithImpl(this._self, this._then);

  final _HomeError _self;
  final $Res Function(_HomeError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_HomeError(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
