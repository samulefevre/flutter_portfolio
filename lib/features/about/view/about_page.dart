import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/app/widgets/widgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: AboutPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        activePage: AppPages.about,
      ),
      body: Container(
        child: const Text('About'),
      ),
    );
  }
}
