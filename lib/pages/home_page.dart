import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/utils/helpers.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    @required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Container(
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bonjour,',
                style: TextStyle(
                  color: Colors.teal,
                  letterSpacing: .5,
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Samuel LEFEVRE',
                style: TextStyle(
                  color: Colors.teal,
                  letterSpacing: .5,
                  fontSize: 22.0,
                ),
              ),
              Text(
                'Développeur Flutter !',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: 30.0,
                ),
              ),
              OutlineButton(
                borderSide: BorderSide(
                  color: Colors.teal,
                ),
                child: Text(
                  'A propos'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () => pageController.animateToPage(
                  1,
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              InkWell(
                child: Text(
                  'Engagez moi sur Malt.fr !',
                  style: kHomeLink,
                ),
                onTap: () async {
                  await launchURL(kUrlMalt);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[...socialList()],
          ),
        ],
      ),
    );
  }
}
