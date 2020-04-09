import 'package:flutter/material.dart';

import 'package:flutter_portfolio/pages/about_page.dart';
import 'package:flutter_portfolio/pages/contact_page.dart';
import 'package:flutter_portfolio/pages/home_page.dart';
import 'package:flutter_portfolio/pages/portfolio_page.dart';
import 'package:flutter_portfolio/widgets/slide_dots.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  final _pageController = PageController(
    initialPage: 0,
  );

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              HomePage(pageController: _pageController),
              AboutPage(pageController: _pageController),
              PortfolioPage(pageController: _pageController),
              ContactPage(pageController: _pageController),
            ],
          ),
          Positioned(
            left: 0,
            top: media.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                for (int index = 0; index < 4; index++)
                  if (index == _currentPage) ...[
                    SlideDots(true),
                    SizedBox(height: 8)
                  ] else ...[
                    SlideDots(false),
                    SizedBox(height: 8)
                  ]
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
