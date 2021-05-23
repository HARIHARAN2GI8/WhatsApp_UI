import 'package:flutter/material.dart';
import 'package:whats_app_ui/model/people%20in%20the%20chats.dart';

class Chatt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chattlist.length,
      itemBuilder: (context, i) => new Column(
        children: [
          Divider(
            height: 4,
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chattlist[i].pic)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  chattlist[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  chattlist[i].time,
                  style: TextStyle(),
                )
              ],
            ),
            subtitle: Text(
              chattlist[i].message,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
