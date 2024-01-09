import 'package:dio/dio.dart';

class ApiController {
  Future<List<dynamic>> getdatas() async {
    final Response = await Dio()
        .get('https://api-berita-indonesia.vercel.app/' + 'antara/terbaru/');

    final datas = Response.data['data']['posts'];
    return datas;
  }
}
