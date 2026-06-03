import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../core/constants.dart';
import '../../../shared/thumbnail_card.dart';
import '../../../shared/subscribe_button.dart';

class ReleasesSection extends StatelessWidget {
  const ReleasesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HboTheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        children: [
          const Text(
            'Estrenos de los que no pararás de hablar',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: HboTheme.primary,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: HboConstants.releases.length,
            itemBuilder: (context, index) {
              final item = HboConstants.releases[index];
              return ThumbnailCard(
                imageUrl: item['image']!,
                title: item['title'],
                borderRadius: 6,
              );
            },
          ),
          const SizedBox(height: 24),
          SubscribeButton(label: 'SUSCRÍBETE AHORA', onPressed: () {}),
        ],
      ),
    );
  }
}
