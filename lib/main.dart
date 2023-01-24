import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// widget에 데이터를 저장하고 상태가 변환하는 것을 보고 싶을 때 statefulwidget 사용
class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

// widget의 state는 widget에 들어갈 데이터와 UI를 넣는 곳
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context는 text의 부모 요소들에 대한 정보가 담겨있다
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
