import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key key,
    @required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    bool isLarge = media.width > 500 ? true : false;

    return Container(
      padding: EdgeInsets.all(30.0),
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'A propos'.toUpperCase(),
            style: isLarge
                ? kPageSubtitle.copyWith(fontSize: 26.0)
                : kPageSubtitle,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Je suis développeur freelance en télétravail et je développe des applications mobiles et sites web avec Flutter.',
            style: isLarge ? kFont.copyWith(fontSize: 20.0) : kFont,
          ),
          SizedBox(
            height: 16.0,
          ),
          RichText(
            text: TextSpan(
                text: 'Vous pouvez me retrouver sur la plateforme ',
                style: isLarge ? kFont.copyWith(fontSize: 20.0) : kFont,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Malt.fr',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async => await launch(kUrlMalt),
                  ),
                  TextSpan(
                    text: ' si vous avez besoin de mes services.',
                  ),
                ]),
          ),
          SizedBox(
            height: 32.0,
          ),
          Text(
            'Qu\'est ce que Flutter ?',
            style: isLarge
                ? kPageSubtitle.copyWith(fontSize: 24.0)
                : kPageSubtitle,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Flutter est un framework développé par Google pour créer de belles applications compilées en mode natif pour mobile, web et bureau à partir d\'une base de code unique.',
            style: isLarge ? kFont.copyWith(fontSize: 20.0) : kFont,
          ),
        ],
      ),
    );
  }
}
