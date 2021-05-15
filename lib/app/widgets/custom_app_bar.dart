import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.activePage = AppPages.home,
  })  : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;
  final AppPages activePage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: preferredSize.height,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _MenuButton(
              text: 'Accueil',
              appPage: AppPages.home,
              isActive: (activePage == AppPages.home) ? true : false,
            ),
            _MenuButton(
              text: 'About',
              appPage: AppPages.about,
              isActive: (activePage == AppPages.about) ? true : false,
            ),
            _MenuButton(
              text: 'Portfolio',
              appPage: AppPages.portfolio,
              isActive: (activePage == AppPages.portfolio) ? true : false,
            ),
            _MenuButton(
              text: 'Articles',
              appPage: AppPages.articles,
              isActive: (activePage == AppPages.articles) ? true : false,
            ),
            _MenuButton(
              text: 'Contact',
              appPage: AppPages.contact,
              isActive: (activePage == AppPages.contact) ? true : false,
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  const _MenuButton({
    required this.text,
    required this.appPage,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  final String text;
  final AppPages appPage;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextButton(
        onPressed: () {
          context.flow<AppPages>().update((next) => appPage);
        },
        style: TextButton.styleFrom(
            minimumSize: const Size(100, 40),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            primary: isActive
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
