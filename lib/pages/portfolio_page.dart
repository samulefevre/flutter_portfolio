import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/porfolio.dart';
import 'package:flutter_portfolio/utils/constants.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(30.0),
      height: media.height,
      width: media.width,
      child: Container(
        margin: EdgeInsets.fromLTRB(16, 48, 16, 64),
        height: media.height - 200.0,
        child: Column(
          children: <Widget>[
            Text(
              'Portfolio'.toUpperCase(),
              style: kPageTitle,
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                itemCount: portfolioList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return BoxProject(
                    portfolio: portfolioList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoxProject extends StatelessWidget {
  const BoxProject({Key? key, this.portfolio}) : super(key: key);

  final Portfolio? portfolio;

  @override
  Widget build(BuildContext context) {
    return Container(
      // not working
      child: Card(
        color: Colors.black12,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 3,
                ),
              ),
              width: 120,
              height: 120,
              child: Image(
                image: AssetImage(portfolio!.image),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(portfolio!.name!),
                    SizedBox(
                      height: 8,
                    ),
                    Text(portfolio!.description!),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
