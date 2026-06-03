import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../core/constants.dart';
import '../../../shared/thumbnail_card.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HboTheme.background,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'HBO Max es el lugar de las grandes historias, los dramas intensos y las mejores comedias.',
              textAlign: TextAlign.center,
              style: TextStyle(color: HboTheme.primary, fontSize: 16, height: 1.5),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 260,
            child: Stack(
              children: [
                PageView.builder(
                  controller: PageController(viewportFraction: 0.48),
                  itemCount: HboConstants.categories.length,
                  itemBuilder: (context, index) {
                    final cat = HboConstants.categories[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ThumbnailCard(
                            imageUrl: cat['image']!,
                            height: 260,
                            borderRadius: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black87],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 12,
                            right: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cat['label']!,
                                  style: const TextStyle(
                                    color: HboTheme.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  )),
                                const SizedBox(height: 4),
                                Text(cat['sub']!,
                                  style: const TextStyle(
                                    color: HboTheme.secondary,
                                    fontSize: 11,
                                    letterSpacing: 0.5,
                                  )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
