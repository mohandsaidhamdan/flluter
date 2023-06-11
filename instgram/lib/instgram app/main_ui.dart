import 'package:flutter/material.dart';

import 'chat.dart';
import 'home.dart';
import 'notification.dart';

// ignore: camel_case_types
class main_ui extends StatefulWidget {
  @override
  State<main_ui> createState() => _main_uiState();
}

class _main_uiState extends State<main_ui> {
  PageController controller = PageController();

  int selectTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture:
                  CircleAvatar(backgroundImage: AssetImage("assetName")),
              accountName: Text("Mohand"),
              accountEmail: Text("mohanha921@gmail.com")),
          ListTile(
            onTap: () {
              controller.jumpToPage(0);
              Navigator.of(context).pop();
            },
            title: const Text("home"),
            subtitle: const Text("go to home"),
            leading: const Icon(Icons.home),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {
              controller.jumpToPage(1);
              Navigator.of(context).pop();
            },
            title: const Text("chat"),
            subtitle: const Text("go to chat"),
            leading: const Icon(Icons.chat),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {
              controller.jumpToPage(2);
              Navigator.of(context).pop();
            },
            title: const Text("notification"),
            subtitle: const Text("go to notification"),
            leading: const Icon(Icons.notifications),
            trailing: const Icon(Icons.arrow_forward),
          ),
        ]),
      ),

      // dottom Navigation
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectTab = value;
            controller.jumpToPage(value);
            setState(() {});
          },
          currentIndex: selectTab,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chat"),
          ]),
      appBar: AppBar(
        title: const Text("Chat"),
        actions: [
          ElevatedButton(
              onPressed: () {
                controller.jumpToPage(1);
              },
              child: const Text("go to Notification"))
        ],
      ),
      body: PageView(
          controller: controller, children: [home(), notification(), chat()]),
    );
  }
}
