import 'dart:math' as math;
import 'package:flutter/material.dart';

class AppPreviewMockup extends StatelessWidget {
  const AppPreviewMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF111111),
          borderRadius: BorderRadius.circular(36),
          border: Border.all(color: const Color(0xFF2C2C2C), width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.06),
              blurRadius: 48,
              spreadRadius: 0,
            ),
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            _MockStatusBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 10, 14, 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _MockTopBar(),
                      const SizedBox(height: 14),
                      const _MockMacroRings(),
                      const SizedBox(height: 14),
                      const _MockMealSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --- Status Bar ---

class _MockStatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '9:41',
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
          ),
          Row(
            children: const [
              Icon(Icons.signal_cellular_4_bar, color: Colors.white, size: 10),
              SizedBox(width: 3),
              Icon(Icons.wifi, color: Colors.white, size: 10),
              SizedBox(width: 3),
              Icon(Icons.battery_full, color: Colors.white, size: 10),
            ],
          ),
        ],
      ),
    );
  }
}

// --- Top Bar ---

class _MockTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        _MockPill(label: 'Today', highlighted: false),
        _MockPill(label: '2000 / 2476', highlighted: true),
        _MockPill(label: '↑', highlighted: false),
      ],
    );
  }
}

class _MockPill extends StatelessWidget {
  final String label;
  final bool highlighted;
  const _MockPill({required this.label, required this.highlighted});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: highlighted ? Colors.transparent : const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(20),
        border: highlighted
            ? Border.all(color: const Color(0xFF4A9EFF), width: 1.5)
            : null,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: highlighted ? FontWeight.w700 : FontWeight.w500,
        ),
      ),
    );
  }
}

// --- Macro Rings ---

class _MockMacroRings extends StatelessWidget {
  const _MockMacroRings();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1C),
        borderRadius: BorderRadius.circular(14),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _MacroRing(
              label: 'Cal',
              value: '2000',
              total: '2476',
              progress: 0.81,
              color: Color(0xFF4A9EFF)),
          _MacroRing(
              label: 'Prot',
              value: '142g',
              total: '175g',
              progress: 0.81,
              color: Color(0xFFFF6B6B)),
          _MacroRing(
              label: 'Carbs',
              value: '210g',
              total: '260g',
              progress: 0.81,
              color: Color(0xFF51CF66)),
          _MacroRing(
              label: 'Fat',
              value: '67g',
              total: '83g',
              progress: 0.81,
              color: Color(0xFFFFD43B)),
        ],
      ),
    );
  }
}

class _MacroRing extends StatelessWidget {
  final String label;
  final String value;
  final String total;
  final double progress;
  final Color color;

  const _MacroRing({
    required this.label,
    required this.value,
    required this.total,
    required this.progress,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 44,
          height: 44,
          child: CustomPaint(
            painter: _RingPainter(progress: progress, color: color),
            child: Center(
              child: Text(
                value.replaceAll('g', ''),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(color: Color(0xFF888888), fontSize: 8)),
      ],
    );
  }
}

class _RingPainter extends CustomPainter {
  final double progress;
  final Color color;
  const _RingPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) - 4;
    const strokeWidth = 4.0;

    final bgPaint = Paint()
      ..color = const Color(0xFF2A2A2A)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final fgPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, bgPaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      2 * math.pi * progress,
      false,
      fgPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// --- Meal Section ---

class _MockMealSection extends StatelessWidget {
  const _MockMealSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Today's Log",
          style: TextStyle(
              color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 8),
        _MockFoodEntry(
            name: 'Breakfast',
            detail: '480 kcal · 38P · 52C · 14F',
            color: Color(0xFF4A9EFF)),
        SizedBox(height: 6),
        _MockFoodEntry(
            name: 'Lunch',
            detail: '720 kcal · 55P · 80C · 22F',
            color: Color(0xFF51CF66)),
        SizedBox(height: 6),
        _MockFoodEntry(
            name: 'Dinner',
            detail: '580 kcal · 42P · 60C · 18F',
            color: Color(0xFFFFD43B)),
        SizedBox(height: 6),
        _MockFoodEntry(
            name: 'Snacks',
            detail: '220 kcal · 7P · 28C · 9F',
            color: Color(0xFFFF6B6B)),
      ],
    );
  }
}

class _MockFoodEntry extends StatelessWidget {
  final String name;
  final String detail;
  final Color color;

  const _MockFoodEntry({
    required this.name,
    required this.detail,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1C),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 3,
            height: 28,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(detail,
                    style: const TextStyle(
                        color: Color(0xFF888888), fontSize: 8)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
