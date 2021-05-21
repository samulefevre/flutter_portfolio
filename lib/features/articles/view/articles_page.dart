import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';

class ArticlesPage extends StatelessWidget {
  ArticlesPage({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: ArticlesPage());

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600 ? true : false;
    return Scaffold(
      appBar: CustomAppBar(
        activePage: AppPages.articles,
        isMobile: isMobile,
      ),
      drawer: const DrawerMobile(activePage: AppPages.articles),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          width: MediaQuery.of(context).size.width * 0.65,
          child: Column(
            children: [
              Text(
                'Articles'.toUpperCase(),
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 32),
              const Text('Coming soon ...')
            ],
          ),
        ),
      ),
    );
  }
}
