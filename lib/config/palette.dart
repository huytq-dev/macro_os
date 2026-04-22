import 'package:flutter/painting.dart';

class Palette {
  static const primaryColor = Color(0xFF1E88E5);
  static const secondaryColor = Color(0xFF42A5F5);
  static const backgroundColor = Color(0xFFF5F5F5);
  static const textColor = Color(0xFF212121);

  // --- Backgrounds (Tối giản) ---
  static const backgroundBase = Color(0xFFFFFFFF); // White background
  static const backgroundSurface = Color(0xFFF9FAFB); // Slight gray surface
  static const backgroundElevated = Color(0xFFF3F4F6); // Elevated card
  static const backgroundOverlay = Color(0xFFE5E7EB); // Hover, selected

  // --- Accents (Màu chức năng - giữ nguyên) ---
  static const accentGreen = Color(
    0xFF10B981,
  ); // Primary CTA, positive (đậm hơn)
  static const accentOrange = Color(0xFFF59E0B); // Calories, energy
  static const accentBlue = Color(0xFF3B82F6); // Carbs (xanh đậm hơn)
  static const accentPink = Color(0xFFEC4899); // Fat (hồng đậm hơn)
  static const accentPurple = Color(0xFF8B5CF6); // Protein (tím đậm hơn)

  // --- Text (Đen/Xám) ---
  static const textPrimary = Color(0xFF000000); // Headings, important
  static const textSecondary = Color(0xFF6B7280); // Labels, captions
  static const textMuted = Color(0xFF9CA3AF); // Placeholder, disabled

  // --- Borders & Status ---
  static const border = Color(0xFFE5E7EB); // Dividers, light borders
  static const success = Color(0xFF059669); // Green - completed
  static const warning = Color(0xFFF59E0B); // Amber - calibrating
  static const error = Color(0xFFDC2626); // Red - exceeded
}
