import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key key,
    @required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

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
                style: kPageTitle,
              ),
              SizedBox(
                height: 16.0,
              ),
              (media.width > 500)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        buildContactMe(),
                        buildFindMe(),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        buildContactMe(),
                        SizedBox(
                          height: 32.0,
                        ),
                        buildFindMe(),
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
                FlatButton(
                  child: Text(
                    'Mentions légales',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
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

  Column buildFindMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Où me trouver ?'),
        SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[...socialList()],
        ),
      ],
    );
  }

  Column buildContactMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Me contacter :'),
        SizedBox(
          height: 16.0,
        ),
        Text('samuel.lefevr@gmail.com'),
      ],
    );
  }
}
