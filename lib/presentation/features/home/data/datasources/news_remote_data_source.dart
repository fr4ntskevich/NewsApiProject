import 'package:dio/dio.dart';
import 'package:news_api_project/app/error/exceptions.dart';
import 'package:news_api_project/core/network/api_client.dart';
import 'package:news_api_project/presentation/features/home/data/models/article_model.dart';

abstract class NewsRemoteDataSource {
  Future<TopHeadlinesResponseModel> getTopHeadlines({
    required int page,
    required int pageSize,
    String country = 'us',
  });
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  const NewsRemoteDataSourceImpl({required this.apiClient});

  final ApiClient apiClient;

  @override
  Future<TopHeadlinesResponseModel> getTopHeadlines({
    required int page,
    required int pageSize,
    String country = 'us',
  }) async {
    try {
      final response = await apiClient.dio.get(
        'top-headlines',
        queryParameters: {
          'country': country,
          'pageSize': pageSize,
          'page': page,
        },
      );
      final data = response.data as Map<String, dynamic>;
      if (data['status'] != 'ok') {
        throw ServerException(data['message'] as String? ?? 'Server error');
      }
      return TopHeadlinesResponseModel.fromJson(data);
    } on ServerException {
      rethrow;
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Network error');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
