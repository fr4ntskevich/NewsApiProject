import 'dart:convert';

import 'package:news_api_project/features/favorites/data/models/favorite_article_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class FavoritesLocalDataSource {
  List<FavoriteArticleModel> getFavorites();
  Future<void> saveFavorites(List<FavoriteArticleModel> favorites);
}

class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  FavoritesLocalDataSourceImpl({required this.sharedPreferences});

  static const _favoritesKey = 'cached_favorites';

  final SharedPreferences sharedPreferences;

  @override
  List<FavoriteArticleModel> getFavorites() {
    final jsonString = sharedPreferences.getString(_favoritesKey);
    if (jsonString == null) return [];
    final List<dynamic> jsonList = json.decode(jsonString) as List<dynamic>;
    return jsonList
        .map((e) => FavoriteArticleModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> saveFavorites(List<FavoriteArticleModel> favorites) async {
    final jsonString = json.encode(favorites.map((e) => e.toJson()).toList());
    await sharedPreferences.setString(_favoritesKey, jsonString);
  }
}
