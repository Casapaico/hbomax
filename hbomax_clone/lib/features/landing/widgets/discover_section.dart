import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../core/constants.dart';
import '../../../shared/thumbnail_card.dart';

class DiscoverSection extends StatefulWidget {
  const DiscoverSection({super.key});

  @override
  State<DiscoverSection> createState() => _DiscoverSectionState();
}

class _DiscoverSectionState extends State<DiscoverSection> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HboTheme.background,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          const Text(
            'DESCUBRE LO MEJOR EN',
            style: TextStyle(
              color: HboTheme.primary,
              fontSize: 13,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          // Tabs horizontales
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: List.generate(HboConstants.discoverTabs.length, (i) {
                final selected = i == _tab;
                return GestureDetector(
                  onTap: () => setState(() => _tab = i),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Column(
                      children: [
                        Text(
                          HboConstants.discoverTabs[i],
                          style: TextStyle(
                            color: selected ? HboTheme.primary : HboTheme.secondary,
                            fontSize: 16,
                            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        if (selected)
                          Container(height: 2, width: 40, color: HboTheme.primary),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 20),
          // Grid de contenido
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: HboConstants.discoverComedia.length,
              itemBuilder: (context, index) {
                final item = HboConstants.discoverComedia[index];
                return ThumbnailCard(
                  imageUrl: item['image']!,
                  title: item['title'],
                  borderRadius: 6,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
