import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    // 유저 반응에 따라 작동 (탭, 드래그, 무브, 줌 등 모두 감지 가능)
    return GestureDetector(
      onTap: () {
        // Push는 statelesswidget을 원하지 않음
        Navigator.push(
          context,
          MaterialPageRoute(
            // 사실 새로운 widget을 띄우고 있는 형태이다
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            // 아래에서 카드가 나오게 되는 것 처럼 만들어 주는 옵션
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          // detail screen의 이미지와 같이 사용할 수 있도록 만들어주는데, 설명하기가 힘드네;
          Hero(
            tag: id,
            child: Container(
              width: 200,
              // 아래 borderradius가 적용이 안되는 것을 적용시켜주는 코드
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.5))
                ],
              ),
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
