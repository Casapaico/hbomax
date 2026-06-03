import 'package:flutter/material.dart';
import '../core/theme.dart';

class HboNavbar extends StatelessWidget implements PreferredSizeWidget {
  const HboNavbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: HboTheme.primary, size: 28),
        onPressed: () {},
      ),
      title: _HboLogo(),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: HboTheme.primary,
              side: const BorderSide(color: HboTheme.primary, width: 1.5),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, letterSpacing: 1.0),
            ),
            child: const Text('SUSCRÍBETE'),
          ),
        ),
      ],
    );
  }
}

class _HboLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'HBO',
          style: TextStyle(
            color: HboTheme.primary,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(width: 4),
        Container(
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: HboTheme.primary,
          ),
          child: const Center(
            child: Text(
              'max',
              style: TextStyle(
                color: HboTheme.background,
                fontSize: 9,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
