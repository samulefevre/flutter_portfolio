import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.dart';
import 'package:flutter_portfolio/app/widgets/custom_app_bar.dart';
import 'package:url_launcher/link.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        key: Key('customAppBar'),
        activePage: AppPages.home,
      ),
      drawer: const DrawerMobile(activePage: AppPages.home),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Bonjour,',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xff0097e6),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Samuel LEFEVRE',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: const Color(0xff0097e6),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Développeur web et mobile',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xffffffff),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  Link(
                    uri: Uri.parse('/about'),
                    builder: (context, followLink) {
                      return OutlinedButton(
                        key: const Key('about_OutlinedButton'),
                        onPressed: () => context
                            .flow<AppPages>()
                            .update((next) => AppPages.about),
                        style: OutlinedButton.styleFrom(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          minimumSize: const Size(180, 20),
                          padding: const EdgeInsets.all(25),
                          side: BorderSide(
                            color: Theme.of(context).accentColor,
                            width: 2,
                          ),
                        ),
                        child: Text('About'.toUpperCase()),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Link(
                    uri: Uri.parse(kUrlMalt),
                    target: LinkTarget.blank,
                    builder: (context, followLink) {
                      return TextButton(
                        key: const Key('malt_textButton'),
                        onPressed: followLink,
                        child: const Text(
                          'Engagez moi sur Malt.fr !',
                          style: TextStyle(
                            color: Color(0xff0097e6),
                            fontSize: 30,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SocialIcons(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
