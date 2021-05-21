import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/utils/utils.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';
import 'package:flutter_portfolio/features/home/home.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: AboutPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(activePage: AppPages.about),
      drawer: const DrawerMobile(activePage: AppPages.about),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          width: MediaQuery.of(context).size.width * 0.65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'A propos'.toUpperCase(),
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 32.0),
              const Text(
                'Je suis développeur freelance en télétravail '
                'et je développe des applications mobiles '
                'et sites web avec Flutter.',
              ),
              const SizedBox(height: 16.0),
              RichText(
                key: const Key('textAbout2_richText'),
                text: TextSpan(
                  text: 'Vous pouvez me retrouver sur la plateforme ',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Malt.fr',
                      style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => launchURL(kUrlMalt),
                    ),
                    const TextSpan(
                        text: ' si vous avez besoin de mes services.'),
                  ],
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(height: 32.0),
              Text('Qu\'est ce que Flutter ?',
                  style: Theme.of(context).textTheme.headline4),
              const SizedBox(height: 32.0),
              const Text(
                'Flutter est un framework développé par Google '
                'pour créer de belles applications compilées '
                'en mode natif pour mobile, web et bureau à '
                'partir d\'une base de code unique.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
