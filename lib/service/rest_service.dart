import 'package:api_rest/models/user_model.dart';
import 'package:dio/dio.dart';

final _dio = Dio();

Future<List<UserModel>> findAll() async {
  final response = await _dio.get("https://jsonplaceholder.typicode.com/users");

  List<UserModel> users =
      List.from(response.data.map((user) => UserModel.fromMap(user)));


  return users;
}
