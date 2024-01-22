import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final base = ThemeData.light();

    return base.copyWith(
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontFamily: "Sora", color: Color(0xff252849)),
          bodySmall: TextStyle(fontFamily: "Sora", color: Color(0xff252849), fontSize: 12, fontWeight: FontWeight.w400),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontFamily: "Sora", color: Color(0xff252849), fontSize: 18, fontWeight: FontWeight.w700),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(fontFamily: "Sora", fontWeight: FontWeight.w600, fontSize: 10, color: Color(0xff60607B)),
          selectedItemColor: Color(0xFF67CD00),
          unselectedItemColor: Color(0xFF60607B),
        ),
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: Colors.grey.withOpacity(0.4),
        ));
  }

  static ThemeData get darkTheme {
    final base = ThemeData.dark();

    return base.copyWith(
      textTheme: TextTheme(
        bodyMedium: TextStyle(fontFamily: "Sora", color: Color.fromARGB(255, 187, 191, 236)),
        bodySmall: TextStyle(fontFamily: "Sora", color: Color.fromARGB(0, 236, 195, 195)),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontFamily: "Sora", color: Color.fromARGB(255, 178, 183, 241), fontSize: 18, fontWeight: FontWeight.w700),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(fontFamily: "Sora", fontWeight: FontWeight.w600, fontSize: 10, color: Color.fromARGB(255, 195, 195, 247)),
        selectedItemColor: Color(0xFF67CD00),
        unselectedItemColor: Color.fromARGB(255, 193, 193, 220),
      ),
    );
  }
}
