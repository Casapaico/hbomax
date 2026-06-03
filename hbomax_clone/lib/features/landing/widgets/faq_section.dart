import 'package:flutter/material.dart';
import '../../../core/theme.dart';
import '../../../core/constants.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HboTheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: HboConstants.faqItems.map((item) {
          return _FaqItem(
            question: item['question']!,
            answer: item['answer']!,
          );
        }).toList(),
      ),
    );
  }
}

class _FaqItem extends StatefulWidget {
  final String question;
  final String answer;
  const _FaqItem({required this.question, required this.answer});

  @override
  State<_FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<_FaqItem> with SingleTickerProviderStateMixin {
  bool _expanded = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => _expanded = !_expanded);
    _expanded ? _controller.forward() : _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _toggle,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.question,
                    style: const TextStyle(
                      color: HboTheme.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                RotationTransition(
                  turns: Tween(begin: 0.0, end: 0.5).animate(_animation),
                  child: const Icon(Icons.keyboard_arrow_down,
                    color: HboTheme.primary, size: 24),
                ),
              ],
            ),
          ),
        ),
        SizeTransition(
          sizeFactor: _animation,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              widget.answer,
              style: const TextStyle(
                color: HboTheme.secondary,
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ),
        ),
        const Divider(color: HboTheme.divider, thickness: 0.5, height: 0),
      ],
    );
  }
}
