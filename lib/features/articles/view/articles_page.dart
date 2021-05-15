import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: ArticlesPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(activePage: AppPages.articles),
      body: Container(child: const Text('Articles')),
    );
  }
}
