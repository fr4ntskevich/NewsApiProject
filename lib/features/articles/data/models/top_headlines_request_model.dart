class TopHeadlinesRequestModel {
  const TopHeadlinesRequestModel({
    required this.page,
    required this.pageSize,
    this.country = 'us',
    this.category,
    this.query,
  });

  final int page;
  final int pageSize;
  final String country;
  final String? category;
  final String? query;

  Map<String, dynamic> toQueryParameters() {
    return {
      'country': country,
      'pageSize': pageSize,
      'page': page,
      if (category != null) 'category': category,
      if (query != null && query!.isNotEmpty) 'q': query,
    };
  }
}
