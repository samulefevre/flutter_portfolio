import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.activePage,
    required this.isMobile,
  })  : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;
  final AppPages activePage;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return !isMobile
        ? Center(
            child: Container(
              height: preferredSize.height,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _MenuButton(
                    name: 'home',
                    text: 'Accueil',
                    appPage: AppPages.home,
                    isActive: (activePage == AppPages.home) ? true : false,
                  ),
                  _MenuButton(
                    name: 'about',
                    text: 'A propos',
                    appPage: AppPages.about,
                    isActive: (activePage == AppPages.about) ? true : false,
                  ),
                  _MenuButton(
                    name: 'portfolio',
                    text: 'Portfolio',
                    appPage: AppPages.portfolio,
                    isActive: (activePage == AppPages.portfolio) ? true : false,
                  ),
                  _MenuButton(
                    name: 'articles',
                    text: 'Articles',
                    appPage: AppPages.articles,
                    isActive: (activePage == AppPages.articles) ? true : false,
                  ),
                  _MenuButton(
                    name: 'contact',
                    text: 'Contact',
                    appPage: AppPages.contact,
                    isActive: (activePage == AppPages.contact) ? true : false,
                  ),
                ],
              ),
            ),
          )
        : _MenuMobile();
  }
}

class _MenuButton extends StatelessWidget {
  const _MenuButton({
    required this.name,
    required this.text,
    required this.appPage,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  final String name;
  final String text;
  final AppPages appPage;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextButton(
        key: Key('${name}_textButton'),
        onPressed: () {
          context.flow<AppPages>().update((next) => appPage);
        },
        style: TextButton.styleFrom(
            minimumSize: const Size(100, 40),
            padding: const EdgeInsets.symmetric(horizontal: 10),
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

class _MenuMobile extends StatelessWidget {
  _MenuMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: IconButton(
        key: const Key('menu_IconButton'),
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}
