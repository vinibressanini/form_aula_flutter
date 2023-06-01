import 'package:api_rest/pages/user_form_page.dart';
import 'package:api_rest/pages/user_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (_) => const UserListPage(),
        "/user_form" : (_) => const UserFormPage(),
      },
    );
  }
}


