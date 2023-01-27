import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    // asynchronous function 에서만 사용할 수 있음
    // 데이터를 온전히 가져올 때 까지 대기
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return; // return nothing
    }
    throw Error();
  }
}
