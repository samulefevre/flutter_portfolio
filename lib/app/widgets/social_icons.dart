import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/home/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({Key? key}) : super(key: key);

  List<Widget> socialList() {
    return socialItems
        .map(
          (socialItem) => Container(
            //width: 48,
            child: Center(
              child: Link(
                uri: Uri.parse(socialItem.link!),
                target: LinkTarget.blank,
                builder: (context, followLink) {
                  return IconButton(
                    icon: FaIcon(
                      socialItem.logo,
                      color: Colors.white,
                    ),
                    onPressed: followLink,
                  );
                },
              ),
            ),
          ),
        )
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
