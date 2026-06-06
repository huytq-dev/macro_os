import 'package:flutter/painting.dart';

class Palette {
  // ==========================================
  // 1. MÀU DÙNG CHUNG (Accents & Status)
  // Dùng cho biểu đồ, icon, và thông báo ở cả 2 theme
  // ==========================================
  static const accentGreen = Color(0xFFA3E635);  // Xanh lá mạ
  static const accentOrange = Color(0xFFF97316); // Cam (Protein)
  static const accentBlue = Color(0xFF60A5FA);   // Xanh dương (Calories)
  static const accentPink = Color(0xFFF472B6);   // Hồng
  static const accentPurple = Color(0xFFA78BFA); // Tím
  static const accentYellow = Color(0xFFFBBF24); // Vàng (Fat)

  static const success = Color(0xFF22C55E); // Xanh lá báo thành công
  static const warning = Color(0xFFEAB308); // Vàng báo cảnh báo
  static const error = Color(0xFFEF4444);   // Đỏ báo lỗi

  // ==========================================
  // 2. GIAO DIỆN TỐI (DARK THEME)
  // ==========================================
  static const darkBackgroundBase = Color(0xFF0F0F14);     // Nền app
  static const darkBackgroundSurface = Color(0xFF1C1C24);  // Nền Card
  static const darkBackgroundElevated = Color(0xFF252530); // Nền Input
  static const darkBorder = Color(0xFF2E2E3C);             // Viền xám tối

  static const darkTextPrimary = Color(0xFFFFFFFF);   // Chữ trắng sáng
  static const darkTextSecondary = Color(0xFF9CA3AF); // Chữ xám
  static const darkTextMuted = Color(0xFF6B7280);     // Chữ xám chìm

  static const darkButtonBg = Color(0xFFFFFFFF);      // Nền nút bấm chính (Trắng)
  static const darkButtonText = Color(0xFF000000);    // Chữ trên nút chính (Đen)

  // ==========================================
  // 3. GIAO DIỆN SÁNG (LIGHT THEME)
  // ==========================================
  static const lightBackgroundBase = Color(0xFFFFFFFF);     // Nền app trắng tinh
  static const lightBackgroundSurface = Color(0xFFF9FAFB);  // Nền Card hơi xám nhẹ (hoặc trắng)
  static const lightBackgroundElevated = Color(0xFFF3F4F6); // Nền nổi
  static const lightBorder = Color(0xFFE5E7EB);             // Viền xám sáng (cho list, divider)
  static const lightBorderActive = Color(0xFF000000);       // Viền đen đậm (khi chọn thẻ Giới tính)

  static const lightTextPrimary = Color(0xFF000000);   // Chữ đen đậm
  static const lightTextSecondary = Color(0xFF6B7280); // Chữ xám đậm
  static const lightTextMuted = Color(0xFF9CA3AF);     // Chữ xám nhạt

  static const lightButtonBg = Color(0xFF000000);      // Nền nút bấm chính (Đen - như nút Next)
  static const lightButtonText = Color(0xFFFFFFFF);    // Chữ trên nút chính (Trắng)
}