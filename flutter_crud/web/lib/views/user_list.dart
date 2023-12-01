
import 'package:flutter/material.dart';
import 'package:flutter_crud/componentes/user_tile.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/user.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, User> users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Usuários"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, i){
          return UserTile(user: users.values.elementAt(i));
        },
        itemCount: users.length,
        ),
    );
  }
}