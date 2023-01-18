// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// widget은 레고블럭과 같다
// statelesswidget
// 해당 App은 root지점
class App extends StatelessWidget {
  // build : widget의 ui를 생성
  @override // 부모 class method를 상속받음
  Widget build(BuildContext context) {
    // return material(google) or cupertino(ios) app
    return MaterialApp(
      // 모든 app은 scaffold를 가져야함(뼈대와 같음)
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter!"),
        ),
        body: Center(
          child: Text("Hello World!"),
        ),
      ),
    );
  }
}
