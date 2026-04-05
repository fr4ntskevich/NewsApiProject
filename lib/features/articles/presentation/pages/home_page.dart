import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:news_api_project/app/router/app_router.dart';
import 'package:news_api_project/app/di/injection_container.dart';
import 'package:news_api_project/features/articles/domain/entities/articles_category.dart';
import 'package:news_api_project/features/articles/presentation/bloc/articles_bloc.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/articles/presentation/widgets/news_category_chip.dart';
import 'package:news_api_project/presentation/theme/app_icons.dart';
import 'package:news_api_project/presentation/widgets/article_card.dart';

@RoutePage()
class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ArticlesBloc>()..add(const ArticlesEvent.fetched()),
      child: const _ArticlesView(),
    );
  }
}

class _ArticlesView extends StatefulWidget {
  const _ArticlesView();

  @override
  State<_ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<_ArticlesView> {
  static const double _scrollThreshold = 200;

  final ScrollController _scrollController = ScrollController();
  ArticlesCategory _selectedCategory = ArticlesCategory.general;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - _scrollThreshold) {
      context.read<ArticlesBloc>().add(const ArticlesEvent.loadMore());
    }
  }

  static const double _searchIconPadding = 13;
  static const double _chipBarHeight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: _searchIconPadding),
          onPressed: context.router.maybePop,
          icon: SvgPicture.asset(AppIcons.search),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(_chipBarHeight),
          child: _CategoryChipBar(
            categories: ArticlesCategory.values,
            selectedCategory: _selectedCategory,
            onCategorySelected: (category) {
              setState(() => _selectedCategory = category);
              context.read<ArticlesBloc>().add(ArticlesEvent.categoryChanged(category));
            },
          ),
        ),
      ),
      body: BlocBuilder<ArticlesBloc, ArticlesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (articles, totalResults, page) => _ArticleList(
              scrollController: _scrollController,
              articles: articles,
              isLoadingMore: false,
            ),
            loadingMore: (articles, totalResults, page) => _ArticleList(
              scrollController: _scrollController,
              articles: articles,
              isLoadingMore: true,
            ),
            error: (failure) => _ErrorView(
              message: failure.message,
              onRetry: () => context.read<ArticlesBloc>().add(const ArticlesEvent.fetched()),
            ),
          );
        },
      ),
    );
  }
}

class _CategoryChipBar extends StatelessWidget {
  const _CategoryChipBar({
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  static const double _height = 60;
  static const double _chipSpacing = 7;
  static const EdgeInsets _padding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  final List<ArticlesCategory> categories;
  final ArticlesCategory selectedCategory;
  final ValueChanged<ArticlesCategory> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: _padding,
        itemCount: categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: _chipSpacing),
        itemBuilder: (context, index) {
          final category = categories[index];
          return NewsCategoryChip(
            label: category.name[0].toUpperCase() + category.name.substring(1),
            isActive: selectedCategory == category,
            onTap: () {
              if (selectedCategory == category) return;
              onCategorySelected(category);
            },
          );
        },
      ),
    );
  }
}

class _ArticleList extends StatelessWidget {
  const _ArticleList({
    required this.scrollController,
    required this.articles,
    required this.isLoadingMore,
  });

  static const double _cardSpacing = 16;
  static const EdgeInsets _listPadding = EdgeInsets.all(19);
  static final _dateFormat = DateFormat('dd.MM.yyyy');

  final ScrollController scrollController;
  final List<Article> articles;
  final bool isLoadingMore;

  @override
  Widget build(BuildContext context) {
    final itemCount = articles.length + (isLoadingMore ? 1 : 0);

    return ListView.separated(
      controller: scrollController,
      padding: _listPadding,
      itemCount: itemCount,
      separatorBuilder: (context, index) => const SizedBox(height: _cardSpacing),
      itemBuilder: (context, index) {
        if (index >= articles.length) {
          return Center(child: CircularProgressIndicator());
        }
        final article = articles[index];
        return ArticleCard(
          title: article.title,
          subtitle: article.subtitle,
          date: _dateFormat.format(article.publishedAt),
          imageUrl: article.imgUrl,
          onTap: () => context.router.push(ArticleDetailsRoute(article: article)),
        );
      },
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
