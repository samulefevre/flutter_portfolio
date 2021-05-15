import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/features/articles/articles.dart';
import 'package:flutter_portfolio/features/contact/contact.dart';

import 'package:flutter_portfolio/features/home/home.dart';
import 'package:flutter_portfolio/features/about/about.dart';
import 'package:flutter_portfolio/features/portfolio/portfolio.dart';

enum AppPages { home, about, portfolio, contact, articles }

List<Page> onGenerateAppViewPages(AppPages state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppPages.about:
      return [AboutPage.page()];
    case AppPages.portfolio:
      return [PortfolioPage.page()];
    case AppPages.articles:
      return [ArticlesPage.page()];
    case AppPages.contact:
      return [ContactPage.page()];

    default:
      return [HomePage.page()];
  }
}
