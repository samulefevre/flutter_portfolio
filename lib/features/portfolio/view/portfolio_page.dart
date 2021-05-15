import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: PortfolioPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        activePage: AppPages.portfolio,
      ),
      body: Container(
        child: const Text('Portfolio'),
      ),
    );
  }
}
