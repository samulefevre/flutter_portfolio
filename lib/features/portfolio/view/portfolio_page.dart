import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';
import 'package:flutter_portfolio/features/portfolio/portfolio.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: PortfolioPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        activePage: AppPages.portfolio,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          width: MediaQuery.of(context).size.width * 0.65,
          child: Column(
            children: <Widget>[
              Text(
                'Portfolio'.toUpperCase(),
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
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
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(portfolio!.name!),
                    const SizedBox(height: 8),
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
