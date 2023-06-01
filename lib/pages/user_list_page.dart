import 'package:flutter/material.dart';

import '../service/rest_service.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  final _users = findAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List Page'),
        actions: [
          IconButton(
            onPressed: () {
              Map<String,dynamic> data = {
                      "id" : "new",
                    };
                    Navigator.of(context).pushNamed(
                      "/user_form",
                      arguments: data,
                    );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder(
        future: _users,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final user = snapshot.data![index];
                return ListTile(
                  onTap: () {
                    Map<String,dynamic> data = {
                      "id" : user.id,
                    };
                    Navigator.of(context).pushNamed(
                      "/user_form",
                      arguments: data,
                    );
                  },
                  title: Text(user.name),
                  subtitle: Text(user.username),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
