import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../core/constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HboTheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          // Links principales
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 12,
            children: HboConstants.footerMainLinks.map((link) {
              return GestureDetector(
                onTap: () {},
                child: Text(link,
                  style: const TextStyle(
                    color: HboTheme.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  )),
              );
            }).toList(),
          ),

          const SizedBox(height: 24),

          // Links secundarios
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 10,
            children: HboConstants.footerSubLinks.map((link) {
              return GestureDetector(
                onTap: () {},
                child: Text(link,
                  style: const TextStyle(
                    color: HboTheme.secondary,
                    fontSize: 12,
                  )),
              );
            }).toList(),
          ),

          const SizedBox(height: 32),

          // Logo HBO Max
          const _FooterLogo(),

          const SizedBox(height: 28),

          // Íconos redes sociales
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialIcon(icon: Icons.facebook, onTap: () {}),
              const SizedBox(width: 24),
              _SocialIcon(icon: Icons.play_circle_outline, onTap: () {}),
              const SizedBox(width: 24),
              _SocialIcon(icon: Icons.close, onTap: () {}),
              const SizedBox(width: 24),
              _SocialIcon(icon: Icons.music_note, onTap: () {}),
            ],
          ),

          const SizedBox(height: 24),

          // Copyright
          const Text(
            '©2025 WarnerMedia Direct Latin America, LLC. Todos los derechos reservados. HBO Max se usa bajo licencia.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: HboTheme.tertiary,
              fontSize: 11,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterLogo extends StatelessWidget {
  const _FooterLogo();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('HBO',
          style: TextStyle(
            color: HboTheme.primary,
            fontSize: 28,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
          )),
        const SizedBox(width: 6),
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: HboTheme.primary,
          ),
          child: const Center(
            child: Text('max',
              style: TextStyle(
                color: HboTheme.background,
                fontSize: 10,
                fontWeight: FontWeight.w900,
              )),
          ),
        ),
      ],
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _SocialIcon({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: HboTheme.secondary, width: 1),
        ),
        child: Icon(icon, color: HboTheme.primary, size: 18),
      ),
    );
  }
}
