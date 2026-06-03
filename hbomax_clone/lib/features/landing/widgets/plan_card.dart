import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../shared/subscribe_button.dart';

class PlanCard extends StatelessWidget {
  final Map<String, dynamic> plan;
  const PlanCard({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    final features = plan['features'] as List<String>;
    final prefix   = plan['prefix']   as String;
    final billing  = plan['billing']  as String;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: HboTheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(plan['title'] as String,
            style: const TextStyle(color: HboTheme.primary, fontSize: 22, fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              if (prefix.isNotEmpty) ...[
                Text(prefix, style: const TextStyle(color: HboTheme.secondary, fontSize: 13)),
                const SizedBox(width: 4),
              ],
              Text(plan['price'] as String,
                style: const TextStyle(color: HboTheme.primary, fontSize: 28, fontWeight: FontWeight.w700)),
              Text(plan['period'] as String,
                style: const TextStyle(color: HboTheme.secondary, fontSize: 13)),
            ],
          ),
          if (billing.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(billing, style: const TextStyle(color: HboTheme.secondary, fontSize: 12)),
          ],
          const SizedBox(height: 16),
          ...features.map((f) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(children: [
              const Icon(Icons.check, color: HboTheme.primary, size: 16),
              const SizedBox(width: 10),
              Expanded(child: Text(f, style: const TextStyle(color: HboTheme.primary, fontSize: 13))),
            ]),
          )),
          const SizedBox(height: 24),
          SubscribeButton(label: 'SELECCIONAR PLAN', onPressed: () {}),
        ],
      ),
    );
  }
}
