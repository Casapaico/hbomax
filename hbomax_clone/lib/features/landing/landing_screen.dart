import 'package:flutter/material.dart';
import '../../shared/hbo_navbar.dart';
import 'widgets/hero_section.dart';
import 'widgets/plans_section.dart';
import 'widgets/categories_section.dart';
import 'widgets/releases_section.dart';
import 'widgets/discover_section.dart';
import 'widgets/faq_section.dart';
import 'widgets/footer_section.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: const HboNavbar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            PlansSection(),
            CategoriesSection(),
            ReleasesSection(),
            DiscoverSection(),
            FaqSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
