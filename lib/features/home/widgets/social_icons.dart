import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/utils/utils.dart';
import 'package:flutter_portfolio/features/home/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({Key? key}) : super(key: key);

  List<Widget> socialList() {
    return socialItems
        .map((socialItem) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                  icon: FaIcon(
                    socialItem.logo,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    launchURL(socialItem.link!);
                  }),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[...socialList()],
    );
  }
}
