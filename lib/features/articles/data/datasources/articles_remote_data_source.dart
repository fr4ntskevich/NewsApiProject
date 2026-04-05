import 'package:dio/dio.dart';
import 'package:news_api_project/app/error/exceptions.dart';
import 'package:news_api_project/app/network/api_client.dart';
import 'package:news_api_project/features/articles/data/models/article_model.dart';
import 'package:news_api_project/features/articles/data/models/top_headlines_request_model.dart';

abstract class ArticlesRemoteDataSource {
  Future<TopHeadlinesResponseModel> getTopHeadlines(TopHeadlinesRequestModel request);
}

class ArticlesRemoteDataSourceImpl implements ArticlesRemoteDataSource {
  const ArticlesRemoteDataSourceImpl({required this.apiClient});

  final ApiClient apiClient;

  @override
  Future<TopHeadlinesResponseModel> getTopHeadlines(TopHeadlinesRequestModel request) async {
    try {
      final response = await apiClient.dio.get(
        'top-headlines',
        queryParameters: request.toQueryParameters(),
      );
      final data = response.data as Map<String, dynamic>;
      if (data['status'] != 'ok') {
        throw ServerException(
          data['message'] as String? ?? 'Server error',
          response.statusCode,
        );
      }
      return TopHeadlinesResponseModel.fromJson(data);
    } on ServerException {
      rethrow;
    } on DioException catch (e) {
      throw ServerException(
        e.message ?? 'Network error',
        e.response?.statusCode,
      );
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
