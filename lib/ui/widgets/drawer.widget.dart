import 'package:crash_course/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.redAccent,
            const Color.fromARGB(125, 246, 61, 48)
          ])),
          child: Center(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/logo.jpg"),
                  radius: 70,
                ),
              ],
            ),
          ),
        ),
        ...(GlobalParam.menus).map((item) {
          return ListTile(
            title: Text(
              '${item['title']}',
              style: TextStyle(fontSize: 26),
            ),
            leading: item['icon'],
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '${item['route']}');
            },
          );
        })
      ],
    ));
  }
}
