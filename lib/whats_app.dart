import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {

  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          leading: const Icon(Icons.whatsapp),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS")
            ],
          ),
        ),
        body: TabBarView(children: [
          const Text("Camera"),
          ListView(children: const [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.man_rounded),
              ),
              title: Text("Ahmed"),
              subtitle: Text("Take care ya babe"),
              trailing: Text("7:35 PM"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ahmed"),
              subtitle: Text("Take care ya babe"),
              trailing: Text("7:35 PM"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ahmed"),
              subtitle: Text("Take care ya babe"),
              trailing: Text("7:35 PM"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ahmed"),
              subtitle: Text("Take care ya babe"),
              trailing: Text("7:35 PM"),
            )
          ]),
          const Text("Status"),
          const Text("Calls")
        ]),
      ),
    );
  }
}
