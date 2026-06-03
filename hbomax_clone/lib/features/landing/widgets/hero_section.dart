import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../shared/subscribe_button.dart';
import '../../../shared/thumbnail_card.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  static const List<String> _bgImages = [
    'https://picsum.photos/seed/hero1/120/160',
    'https://picsum.photos/seed/hero2/120/160',
    'https://picsum.photos/seed/hero3/120/160',
    'https://picsum.photos/seed/hero4/120/160',
    'https://picsum.photos/seed/hero5/120/160',
    'https://picsum.photos/seed/hero6/120/160',
    'https://picsum.photos/seed/hero7/120/160',
    'https://picsum.photos/seed/hero8/120/160',
    'https://picsum.photos/seed/hero9/120/160',
    'https://picsum.photos/seed/hero10/120/160',
    'https://picsum.photos/seed/hero11/120/160',
    'https://picsum.photos/seed/hero12/120/160',
    'https://picsum.photos/seed/hero13/120/160',
    'https://picsum.photos/seed/hero14/120/160',
    'https://picsum.photos/seed/hero15/120/160',
    'https://picsum.photos/seed/hero16/120/160',
    'https://picsum.photos/seed/hero17/120/160',
    'https://picsum.photos/seed/hero18/120/160',
    'https://picsum.photos/seed/hero19/120/160',
    'https://picsum.photos/seed/hero20/120/160',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _BackgroundGrid(images: _bgImages),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black54, Colors.black45, Colors.black87, Colors.black],
                stops: [0.0, 0.3, 0.7, 1.0],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const _HeroLogo(),
                const SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(fontSize: 18, color: HboTheme.primary),
                    children: [
                      TextSpan(text: 'Los planes empiezan desde '),
                      TextSpan(
                        text: 'S/.17,90/mes',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                SubscribeButton(label: 'SUSCRÍBETE AHORA', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundGrid extends StatelessWidget {
  final List<String> images;
  const _BackgroundGrid({required this.images});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.65,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) => Opacity(
        opacity: 0.6,
        child: ThumbnailCard(imageUrl: images[index], height: double.infinity),
      ),
    );
  }
}

class _HeroLogo extends StatelessWidget {
  const _HeroLogo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('HBO',
              style: TextStyle(
                color: HboTheme.primary,
                fontSize: 72,
                fontWeight: FontWeight.w900,
                height: 1.0,
                letterSpacing: -1,
              )),
            const SizedBox(width: 8),
            Container(
              width: 64,
              height: 64,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: HboTheme.primary),
              child: const Center(
                child: Text('O',
                  style: TextStyle(
                    color: HboTheme.background,
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  )),
              ),
            ),
          ],
        ),
        const Text('max',
          style: TextStyle(
            color: HboTheme.primary,
            fontSize: 72,
            fontWeight: FontWeight.w900,
            height: 0.9,
            letterSpacing: -1,
          )),
      ],
    );
  }
}
