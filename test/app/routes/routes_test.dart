import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/about/about.dart';
import 'package:flutter_portfolio/features/articles/articles.dart';
import 'package:flutter_portfolio/features/contact/contact.dart';
import 'package:flutter_portfolio/features/portfolio/portfolio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_portfolio/app/app.dart';
import 'package:flutter_portfolio/features/home/home.dart';

void main() {
  group('onGenerateAppViewPages', () {
    test('returns [HomePage] when AppPages.home', () {
      expect(
        onGenerateAppViewPages(AppPages.home, []),
        [isA<MaterialPage>().having((p) => p.child, 'child', isA<HomePage>())],
      );
    });

    test('returns [AboutPage] when AppPages.about', () {
      expect(
        onGenerateAppViewPages(AppPages.about, []),
        [isA<MaterialPage>().having((p) => p.child, 'child', isA<AboutPage>())],
      );
    });

    test('returns [PortfolioPage] when AppPages.portfolio', () {
      expect(
        onGenerateAppViewPages(AppPages.portfolio, []),
        [
          isA<MaterialPage>()
              .having((p) => p.child, 'child', isA<PortfolioPage>())
        ],
      );
    });

    test('returns [ArticlesPage] when AppPages.articles', () {
      expect(
        onGenerateAppViewPages(AppPages.articles, []),
        [
          isA<MaterialPage>()
              .having((p) => p.child, 'child', isA<ArticlesPage>())
        ],
      );
    });

    test('returns [ContactPage] when AppPages.contact', () {
      expect(
        onGenerateAppViewPages(AppPages.contact, []),
        [
          isA<MaterialPage>()
              .having((p) => p.child, 'child', isA<ContactPage>())
        ],
      );
    });
  });
}
