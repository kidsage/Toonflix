import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// widget에 데이터를 저장하고 상태가 변환하는 것을 보고 싶을 때 statefulwidget 사용
// statefulwidget은 initstate > build > dispose 의 widget lifecycle을 가지고 있다
class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

// widget의 state는 widget에 들어갈 데이터와 UI를 넣는 곳
class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      // showTitle true면 false되고 반대도 됨
      showTitle = !showTitle;
    });
  }

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
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing to see'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // 위에서 변수로 이니셜라이징 할 수도 있지만, 부모 요소에 의해 이니셜라이징을 하는 경우에는 아래처럼 사용
  // 한 번만 호출된다 (build 이전)
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  // widget이 screen에서 제거될 때 호출되는 메서드
  @override
  void dispose() {
    super.dispose();
    print("dispose!");
  }

  @override
  Widget build(BuildContext context) {
    print("build!");
    // context는 text의 부모 요소들에 대한 정보가 담겨있다
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context)
            .textTheme
            .titleLarge!
            .color, // 상위 클래스의 정보를 가져와서 적용
      ),
    );
  }
}
