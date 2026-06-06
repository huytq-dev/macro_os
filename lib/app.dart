import 'package:flutter/material.dart';
import 'package:macro_os/pages/onboarding/views/onboarding_page.dart';
import 'config/palette.dart';

class App extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  void _navigateToRoute(Route route) {
    _navigator.pushAndRemoveUntil<void>(route, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ẩn banner debug cho giao diện sạch
      // Tự động nhận diện chế độ Sáng/Tối của hệ điều hành
      themeMode: ThemeMode.system,

      // Cấu hình giao diện Sáng
      theme: _buildLightTheme(),

      // Cấu hình giao diện Tối
      darkTheme: _buildDarkTheme(),

      navigatorKey: _navigatorKey,
      home: const OnboardingPage(),
    );
  }

  // ==========================================
  // CẤU HÌNH GIAO DIỆN SÁNG (LIGHT THEME)
  // ==========================================
  ThemeData _buildLightTheme() {
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,

      scaffoldBackgroundColor: Palette.lightBackgroundBase,
      canvasColor: Palette.lightBackgroundSurface,

      colorScheme: const ColorScheme.light(
        primary: Palette.accentGreen,
        secondary: Palette.accentBlue,
        tertiary: Palette.accentPurple,
        surface: Palette.lightBackgroundSurface,
        surfaceContainer: Palette.lightBackgroundElevated,
        surfaceContainerLowest: Palette.lightBackgroundBase,
        error: Palette.error,
        outline: Palette.lightBorder,
        outlineVariant: Palette.lightTextMuted,
        scrim: Color(0xFF000000),
      ),

      textTheme: _buildTextTheme(
        primaryColor: Palette.lightTextPrimary,
        secondaryColor: Palette.lightTextSecondary,
        mutedColor: Palette.lightTextMuted,
      ),

      elevatedButtonTheme: _buildElevatedButtonTheme(
        bgColor: Palette.lightButtonBg,
        fgColor: Palette.lightButtonText,
      ),

      outlinedButtonTheme: _buildOutlinedButtonTheme(
        borderColor: Palette.lightBorder,
        fgColor: Palette.lightTextPrimary,
      ),

      appBarTheme: _buildAppBarTheme(
        bgColor: Palette.lightBackgroundBase,
        fgColor: Palette.lightTextPrimary,
      ),

      cardTheme: _buildCardTheme(
        bgColor: Palette.lightBackgroundElevated,
        borderColor: Palette.lightBorder,
      ),

      inputDecorationTheme: _buildInputDecorationTheme(
        fillColor: Palette.lightBackgroundSurface,
        borderColor: Palette.lightBorder,
        focusColor: Palette.accentGreen,
        errorColor: Palette.error,
        hintColor: Palette.lightTextMuted,
        labelColor: Palette.lightTextSecondary,
      ),
    );
  }

  // ==========================================
  // CẤU HÌNH GIAO DIỆN TỐI (DARK THEME)
  // ==========================================
  ThemeData _buildDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,

      scaffoldBackgroundColor: Palette.darkBackgroundBase,
      canvasColor: Palette.darkBackgroundSurface,

      colorScheme: const ColorScheme.dark(
        primary: Palette.accentGreen,
        secondary: Palette.accentBlue,
        tertiary: Palette.accentPurple,
        surface: Palette.darkBackgroundSurface,
        surfaceContainer: Palette.darkBackgroundElevated,
        surfaceContainerLowest: Palette.darkBackgroundBase,
        error: Palette.error,
        outline: Palette.darkBorder,
        outlineVariant: Palette.darkTextMuted,
        scrim: Color(0xFF000000),
      ),

      textTheme: _buildTextTheme(
        primaryColor: Palette.darkTextPrimary,
        secondaryColor: Palette.darkTextSecondary,
        mutedColor: Palette.darkTextMuted,
      ),

      elevatedButtonTheme: _buildElevatedButtonTheme(
        bgColor: Palette.darkButtonBg,
        fgColor: Palette.darkButtonText,
      ),

      outlinedButtonTheme: _buildOutlinedButtonTheme(
        borderColor: Palette.darkBorder,
        fgColor: Palette.darkTextPrimary,
      ),

      appBarTheme: _buildAppBarTheme(
        bgColor: Palette.darkBackgroundBase,
        fgColor: Palette.darkTextPrimary,
      ),

      cardTheme: _buildCardTheme(
        bgColor: Palette.darkBackgroundElevated,
        borderColor: Palette.darkBorder,
      ),

      inputDecorationTheme: _buildInputDecorationTheme(
        fillColor: Palette.darkBackgroundSurface,
        borderColor: Palette.darkBorder,
        focusColor: Palette.accentGreen,
        errorColor: Palette.error,
        hintColor: Palette.darkTextMuted,
        labelColor: Palette.darkTextSecondary,
      ),
    );
  }

  // ==========================================
  // CÁC HÀM TIỆN ÍCH DÙNG CHUNG ĐỂ TẠO THEME
  // ==========================================

  TextTheme _buildTextTheme({
    required Color primaryColor,
    required Color secondaryColor,
    required Color mutedColor,
  }) {
    return TextTheme(
      headlineLarge: TextStyle(
        color: primaryColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: primaryColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: primaryColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: mutedColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        color: primaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  ElevatedButtonThemeData _buildElevatedButtonTheme({
    required Color bgColor,
    required Color fgColor,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ), // Tăng vertical lên 1 chút cho giống nút "Next"
        minimumSize: const Size(
          double.infinity,
          56,
        ), // Đảm bảo nút to, chuẩn mobile
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ), // Bo góc 12 cho hiện đại
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  OutlinedButtonThemeData _buildOutlinedButtonTheme({
    required Color borderColor,
    required Color fgColor,
  }) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: fgColor,
        side: BorderSide(color: borderColor, width: 1),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  AppBarTheme _buildAppBarTheme({
    required Color bgColor,
    required Color fgColor,
  }) {
    return AppBarTheme(
      backgroundColor: bgColor,
      foregroundColor: fgColor,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: fgColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  CardThemeData _buildCardTheme({
    required Color bgColor,
    required Color borderColor,
  }) {
    return CardThemeData(
      color: bgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: borderColor, width: 1),
      ),
    );
  }

  InputDecorationTheme _buildInputDecorationTheme({
    required Color fillColor,
    required Color borderColor,
    required Color focusColor,
    required Color errorColor,
    required Color hintColor,
    required Color labelColor,
  }) {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ), // Cho ô input thoáng hơn
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), // Đồng bộ bo góc
        borderSide: BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: focusColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: errorColor),
      ),
      hintStyle: TextStyle(color: hintColor),
      labelStyle: TextStyle(color: labelColor),
    );
  }
}
