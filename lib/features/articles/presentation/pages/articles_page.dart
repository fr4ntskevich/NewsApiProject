import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/app/error/utils/failure_localizer.dart';
import 'package:news_api_project/app/l10n/app_localizations.dart';
import 'package:news_api_project/app/l10n/utils/l10n_utils.dart';
import 'package:news_api_project/app/router/app_router.dart';
import 'package:news_api_project/app/di/injection_container.dart';
import 'package:news_api_project/features/articles/domain/entities/articles_category.dart';
import 'package:news_api_project/features/articles/presentation/bloc/articles_bloc.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/articles/presentation/widgets/news_category_chip.dart';
import 'package:news_api_project/presentation/theme/app_fonts.dart';
import 'package:news_api_project/presentation/theme/app_icons.dart';
import 'package:news_api_project/presentation/theme/utils/colors_utils.dart';
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
  static const double _searchIconPadding = 13;
  static const double _chipBarHeight = 70;
  static const double _closeSearchIconSize = 30;

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  ArticlesCategory _selectedCategory = ArticlesCategory.general;
  bool _isSearching = false;

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
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _onScroll() {
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - _scrollThreshold) {
      context.read<ArticlesBloc>().add(const ArticlesEvent.loadMore());
    }
  }

  void _onSearchIconTapped() {
    if (_isSearching) {
      _closeSearch();
    } else {
      setState(() => _isSearching = true);
      _searchFocusNode.requestFocus();
    }
  }

  void _closeSearch() {
    _searchFocusNode.unfocus();
    _searchController.clear();
    setState(() => _isSearching = false);
    context.read<ArticlesBloc>().add(const ArticlesEvent.searched(''));
  }

  void _onSearchSubmitted(String query) {
    _searchFocusNode.unfocus();
    context.read<ArticlesBloc>().add(ArticlesEvent.searched(query));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          padding: EdgeInsets.only(left: _searchIconPadding),
          onPressed: _onSearchIconTapped,
          icon: SvgPicture.asset(AppIcons.search),
        ),
        title: _isSearching
            ? TextField(
                controller: _searchController,
                focusNode: _searchFocusNode,
                textInputAction: TextInputAction.search,
                onSubmitted: _onSearchSubmitted,
                autofocus: true,
                style: AppFonts.reg17,
                decoration: InputDecoration(
                  hintText: context.l10n.searchArticlesHint,
                  hintStyle: AppFonts.reg17.copyWith(
                    color: context.colors.greyLight,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              )
            : null,
        actions: _isSearching
            ? [
                IconButton(
                  icon: Icon(
                    Icons.close,
                    size: _closeSearchIconSize,
                    color: context.colors.grey,
                  ),
                  onPressed: _closeSearch,
                ),
              ]
            : null,
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
        buildWhen: (previous, current) => previous != current,
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
              failure: failure,
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
            label: category.localizedName(context.l10n),
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
          return const Center(child: CircularProgressIndicator());
        }
        final article = articles[index];
        return ArticleCard(
          key: ValueKey(article.title),
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
  const _ErrorView({required this.failure, required this.onRetry});

  static const double _iconSize = 48;
  static const double _padding = 24;

  final Failure failure;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(_padding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              size: _iconSize,
            ),
            const SizedBox(height: 16),
            Text(
              failure.localizedMessage(context.l10n),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(context.l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}

extension _ArticlesCategoryL10n on ArticlesCategory {
  String localizedName(AppLocalizations l10n) => switch (this) {
        ArticlesCategory.general => l10n.categoryGeneral,
        ArticlesCategory.business => l10n.categoryBusiness,
        ArticlesCategory.entertainment => l10n.categoryEntertainment,
        ArticlesCategory.health => l10n.categoryHealth,
        ArticlesCategory.science => l10n.categoryScience,
        ArticlesCategory.sports => l10n.categorySports,
        ArticlesCategory.technology => l10n.categoryTechnology,
      };
}
