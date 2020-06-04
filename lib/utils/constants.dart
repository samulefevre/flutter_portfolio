import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/social_items.dart';
import 'package:flutter_portfolio/utils/helpers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> socialList() {
  return socialItems
      .map((socialItem) => IconButton(
          icon: FaIcon(
            socialItem.logo,
            color: Colors.white,
          ),
          onPressed: () async {
            await launchURL(socialItem.link);
          }))
      .toList();
}

String kUrlMalt = 'https://www.malt.fr/profile/samuellefevre1';

TextStyle kPageTitle = TextStyle(
  color: Colors.teal,
  fontSize: 22.0,
);

TextStyle kPageSubtitle = TextStyle(
  color: Colors.teal,
  fontSize: 18.0,
);

TextStyle kHomeLink = TextStyle(
  color: Colors.teal,
  fontSize: 20.0,
  decoration: TextDecoration.underline,
);

TextStyle kFont = GoogleFonts.lato(color: Colors.white, fontSize: 16.0);
