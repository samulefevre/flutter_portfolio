import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/utils/helpers.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    bool isLarge = media.width > 500 ? true : false;

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
                  fontSize: isLarge ? 30.0 : 16.0,
                ),
              ),
              Text(
                'Samuel LEFEVRE',
                style: TextStyle(
                  color: Colors.teal,
                  letterSpacing: .5,
                  fontSize: isLarge ? 38.0 : 22,
                ),
              ),
              Text(
                'Développeur Flutter !',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: isLarge ? 46.0 : 30.0,
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.teal,
                  ),
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
                  style:
                      isLarge ? kHomeLink.copyWith(fontSize: 24.0) : kHomeLink,
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
