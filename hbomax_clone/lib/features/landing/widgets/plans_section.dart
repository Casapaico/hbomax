import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../core/constants.dart';
import 'plan_card.dart';

class PlansSection extends StatefulWidget {
  const PlansSection({super.key});
  @override
  State<PlansSection> createState() => _PlansSectionState();
}

class _PlansSectionState extends State<PlansSection> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    final plans = _tab == 0 ? HboConstants.plansAnual : HboConstants.plansMensual;
    return Container(
      color: HboTheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          const Text('ELIGE EL MEJOR PLAN PARA TI',
            textAlign: TextAlign.center,
            style: TextStyle(color: HboTheme.primary, fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: 0.5)),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _TabItem(label: 'Anual En Cuotas', badge: 'Ahorra 33%', selected: _tab == 0, onTap: () => setState(() => _tab = 0)),
              const SizedBox(width: 32),
              _TabItem(label: 'Mensual', selected: _tab == 1, onTap: () => setState(() => _tab = 1)),
            ],
          ),
          const SizedBox(height: 24),
          ...plans.map((p) => PlanCard(plan: p)),
          const SizedBox(height: 16),
          const Text(
            '*Full HD, 4K Ultra HD y Dolby Atmos no están disponibles en todo el contenido de cada plan. '
            'El contenido en vivo en los planes Estándar y Platino puede contener publicidad. '
            'Las descargas pueden estar limitadas de acuerdo con el tipo de contenido.',
            textAlign: TextAlign.center,
            style: TextStyle(color: HboTheme.tertiary, fontSize: 11, height: 1.6)),
        ],
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String label;
  final String? badge;
  final bool selected;
  final VoidCallback onTap;
  const _TabItem({required this.label, this.badge, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(children: [
            Text(label, style: TextStyle(
              color: selected ? HboTheme.primary : HboTheme.secondary,
              fontSize: 15,
              fontWeight: selected ? FontWeight.w600 : FontWeight.w400)),
            if (badge != null) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color(0xFF4A90D9), Color(0xFF6B4FBB)]),
                  borderRadius: BorderRadius.circular(4)),
                child: Text(badge!, style: const TextStyle(color: HboTheme.primary, fontSize: 11, fontWeight: FontWeight.w600))),
            ],
          ]),
          const SizedBox(height: 6),
          if (selected) Container(height: 2, width: double.infinity, color: HboTheme.primary),
        ],
      ),
    );
  }
}
