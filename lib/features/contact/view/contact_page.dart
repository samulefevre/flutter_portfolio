import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';
import 'package:flutter_portfolio/features/home/home.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: ContactPage());

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final isLarge = media.width > 500 ? true : false;

    return Scaffold(
        appBar: const CustomAppBar(activePage: AppPages.contact),
        drawer: const DrawerMobile(activePage: AppPages.contact),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact'.toUpperCase(),
                key: const Key('contact_text'),
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 46.0),
              isLarge
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const _BuildContactMe(),
                        const _BuildFindMe(),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const _BuildContactMe(),
                        const SizedBox(height: 32.0),
                        const _BuildFindMe(),
                      ],
                    ),
            ],
          ),
        ));
  }
}

class _BuildFindMe extends StatelessWidget {
  const _BuildFindMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Où me trouver ?',
              style: TextStyle(
                fontSize: 20.0,
                color: Theme.of(context).primaryColor,
              )),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[const SocialIcons()],
          ),
        ],
      ),
    );
  }
}

class _BuildContactMe extends StatelessWidget {
  const _BuildContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
