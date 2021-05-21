import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/theme.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({Key? key, required this.activePage}) : super(key: key);

  final AppPages activePage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: const Key('drawer_mobile'),
      child: DefaultTextStyle(
        style: const TextStyle(color: primaryColor),
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: ListView(
            children: <Widget>[
              _MenuItem(
                text: 'Accueil',
                iconData: Icons.home,
                isActive: activePage == AppPages.home ? true : false,
                appPage: AppPages.home,
              ),
              _MenuItem(
                text: 'A propos',
                iconData: Icons.home,
                isActive: activePage == AppPages.about ? true : false,
                appPage: AppPages.about,
              ),
              _MenuItem(
                text: 'Portfolio',
                iconData: Icons.home,
                isActive: activePage == AppPages.portfolio ? true : false,
                appPage: AppPages.portfolio,
              ),
              _MenuItem(
                text: 'Articles',
                iconData: Icons.home,
                isActive: activePage == AppPages.articles ? true : false,
                appPage: AppPages.articles,
              ),
              _MenuItem(
                text: 'Contact',
                iconData: Icons.home,
                isActive: activePage == AppPages.contact ? true : false,
                appPage: AppPages.contact,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    Key? key,
    required this.isActive,
    required this.iconData,
    required this.text,
    required this.appPage,
  }) : super(key: key);

  final bool isActive;
  final IconData iconData;
  final String text;
  final AppPages appPage;

  @override
  Widget build(BuildContext context) {
    final color = isActive ? accentColor : primaryColor;
    return ListTile(
      /*  leading: Icon(
        Icons.home,
        color: color,
      ), */
      title: Text(
        text.toUpperCase(),
        style: TextStyle(color: color),
      ),
      onTap: () {
        context.flow<AppPages>().update((next) => appPage);
      },
    );
  }
}
