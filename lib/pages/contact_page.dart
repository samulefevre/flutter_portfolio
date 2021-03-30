import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    bool isLarge = media.width > 500 ? true : false;

    return Container(
      padding: EdgeInsets.all(20.0),
      height: media.height,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Contact'.toUpperCase(),
                style: isLarge
                    ? kPageSubtitle.copyWith(fontSize: 26.0)
                    : kPageSubtitle,
              ),
              SizedBox(
                height: 46.0,
              ),
              isLarge
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        buildContactMe(isLarge),
                        buildFindMe(isLarge),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        buildContactMe(isLarge),
                        SizedBox(
                          height: 32.0,
                        ),
                        buildFindMe(isLarge),
                      ],
                    ),
              SizedBox(
                height: 32.0,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Mentions légales',
                    style: kPageSubtitle,
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, '/mentions-legales'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildFindMe(bool isLarge) {
    return Container(
      height: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Où me trouver ?',
              style: isLarge ? kFont.copyWith(fontSize: 20.0) : kFont),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[...socialList()],
          ),
        ],
      ),
    );
  }

  buildContactMe(bool isLarge) {
    return Container(
      height: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Me contacter :',
              style: isLarge ? kFont.copyWith(fontSize: 20.0) : kFont),
          SizedBox(
            height: 28.0,
          ),
          Text('samuel.lefevr@gmail.com',
              style: isLarge ? kFont.copyWith(fontSize: 18.0) : kFont),
        ],
      ),
    );
  }
}
