import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whats_app_ui/model/status_model.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      'My Status',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: Text('Tap to add status update'),
                leading: Container(
                  width: 50,
                  padding: EdgeInsets.only(left: 1),
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://randomuser.me/api/portraits/men/40.jpg',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          child: Text(
            'Recent updates',
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          width: double.infinity,
          height: 30,
          decoration: BoxDecoration(color: Colors.grey.shade300),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: statusmodal.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        Divider(
                          height: 4,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(statusmodal[i].pic),
                          ),
                          title: Text(
                            statusmodal[i].name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(statusmodal[i].time),
                        )
                      ],
                    )))
      ],
    );
  }
}
