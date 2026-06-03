import 'package:flutter/material.dart';
import '../core/theme.dart';

class SubscribeButton extends StatelessWidget {
  final String label;
  final bool filled;
  final VoidCallback? onPressed;

  const SubscribeButton({
    super.key,
    this.label = 'SUSCRÍBETE AHORA',
    this.filled = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (filled) {
      return ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: HboTheme.primary,
          foregroundColor: HboTheme.background,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, letterSpacing: 1.2),
        ),
        child: Text(label),
      );
    }
    return OutlinedButton(
      onPressed: onPressed ?? () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: HboTheme.primary,
        side: const BorderSide(color: HboTheme.primary, width: 1.5),
        minimumSize: const Size(double.infinity, 52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, letterSpacing: 1.2),
      ),
      child: Text(label),
    );
  }
}
