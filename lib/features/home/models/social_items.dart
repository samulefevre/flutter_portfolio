import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialItems {
  SocialItems({
    this.logo,
    this.link,
  });

  final IconData? logo;
  final String? link;
}

final socialItems = [
  SocialItems(
    logo: FontAwesomeIcons.github,
    link: 'https://github.com/samulefevre',
  ),
  SocialItems(
    logo: FontAwesomeIcons.twitter,
    link: 'https://twitter.com/samuel_lefevr',
  ),
  SocialItems(
    logo: FontAwesomeIcons.linkedin,
    link: 'https://www.linkedin.com/in/samuel-lefevre-591446161',
  ),
];
