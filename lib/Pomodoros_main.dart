import 'package:flutter/material.dart';
import 'package:toonflix/screens/Pomodoros_home_screen.dart';

void main() {
  runApp(App());
}

// widget에 데이터를 저장하고 상태가 변환하는 것을 보고 싶을 때 statefulwidget 사용
// statefulwidget은 initstate > build > dispose 의 widget lifecycle을 가지고 있다
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
