import 'package:flutter/material.dart';
import 'package:whats_app_ui/tabs/Status.dart';
import 'package:whats_app_ui/tabs/calls.dart';
import 'package:whats_app_ui/tabs/camera.dart';
import 'package:whats_app_ui/tabs/chatt.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      accentColor: Color(0xff25d366),
    ),
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(length: _tab.length, vsync: this, initialIndex: 1)
          ..addListener(() {
            setState(() {});
          });
  }

  var _tab = [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: "CHATT",
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(
      text: 'CALLS',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: _tab,
          ),
          title: Text(
            'WhatsApp',
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert,
              size: 30,
            ),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Camera(),
            Chatt(),
            Status(),
            Calls(),
          ],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                child: Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            : _tabController.index == 1
                ? SizedBox(
                    height: 80,
                    width: 65,
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.edit,
                                color: Colors.blueGrey,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 80,
                            width: 65,
                            child: FloatingActionButton(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                            SizedBox(
                              height: 50,
                              child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.video_call_sharp,
                                  color: Colors.blueGrey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 80,
                              width: 65,
                              child: FloatingActionButton(
                                child: Icon(
                                  Icons.add_call,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ]));
  }
}
