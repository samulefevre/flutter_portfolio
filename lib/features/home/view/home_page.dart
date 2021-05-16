import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/utils/utils.dart';
import 'package:flutter_portfolio/app/widgets/custom_app_bar.dart';
import 'package:flutter_portfolio/features/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      // backgroundColor: const Color(0xff24374f),
      body: Center(
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
                ),
                Text(
                  'Samuel LEFEVRE',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: const Color(0xff0097e6),
                      ),
                ),
                Text(
                  'Développeur web et mobile',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: const Color(0xffffffff),
                      ),
                ),
                const SizedBox(height: 40),
                OutlinedButton(
                  key: const Key('about_OutlinedButton'),
                  onPressed: () {
                    context.flow<AppPages>().update((next) => AppPages.about);
                  },
                  style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    minimumSize: const Size(180, 20),
                    padding: const EdgeInsets.all(25),
                    side: BorderSide(
                      color: Theme.of(context).accentColor,
                      width: 2,
                    ),
                  ),
                  child: Text('About'.toUpperCase()),
                ),
                const SizedBox(height: 20),
                TextButton(
                  key: const Key('malt_textButton'),
                  onPressed: () => launchURL(kUrlMalt),
                  child: const Text(
                    'Engagez moi sur Malt.fr !',
                    style: TextStyle(
                      color: Color(0xff0097e6),
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            const SocialIcons(),
            Container(),
          ],
        ),
      ),
    );
  }
}
