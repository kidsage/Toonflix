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
  // int counter = 0; // 단순 프로퍼티 not final

  List<int> numbers = [];

  void onClicked() {
    // state 클래스에게 데이터가 변경되었다고 알려주는 함수 (interactive function)
    setState(() {
      // counter = counter + 1;
      numbers.add(numbers.length);
      // print(numbers);
    });
    // 위의 기능과 동일하지만, 가독성을 위해서 setState안에 기능을 넣는다.
    // numbers.add(numbers.length);
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Count",
                style: TextStyle(fontSize: 30),
              ),
              // Text(
              //   '$counter',
              //   style: const TextStyle(fontSize: 30),
              // ),
              for (var n in numbers) Text("$n"),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
                iconSize: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
