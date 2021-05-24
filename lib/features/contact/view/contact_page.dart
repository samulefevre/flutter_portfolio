import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: ContactPage());

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600 ? true : false;

    print(MediaQuery.of(context).size.height);

    return Scaffold(
        appBar: CustomAppBar(
          activePage: AppPages.contact,
          isMobile: isMobile,
        ),
        drawer: const DrawerMobile(activePage: AppPages.contact),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact'.toUpperCase(),
              key: const Key('contact_text'),
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 46.0),
            !isMobile
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const Expanded(child: _BuildContactMe()),
                      const Expanded(child: _BuildFindMe()),
                    ],
                  )
                : Column(
                    key: const Key('contact_Column'),
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const _BuildContactMe(),
                      const SizedBox(height: 46.0),
                      const _BuildFindMe(),
                    ],
                  ),
          ],
        ));
  }
}

class _BuildContactMe extends StatelessWidget {
  const _BuildContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Me contacter :',
          style: TextStyle(
            fontSize: 20.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(height: 28.0),
        Text(
          'samuel.lefevr@gmail.com',
          style: TextStyle(
            fontSize: 18.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}

class _BuildFindMe extends StatelessWidget {
  const _BuildFindMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Où me trouver ?',
            style: TextStyle(
              fontSize: 20.0,
              color: Theme.of(context).primaryColor,
            )),
        const SizedBox(height: 28.0),
        const SocialIcons()
      ],
    );
  }
}
