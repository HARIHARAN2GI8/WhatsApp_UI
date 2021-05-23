import 'package:flutter/material.dart';
import 'package:whats_app_ui/model/call_model.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CallModel.length,
        itemBuilder: (context, i) => Column(children: [
              Divider(
                height: 4,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(CallModel[i].pic),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      CallModel[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                      width: 50,
                      child: Icon(
                        i % 2 == 0 ? Icons.video_call : Icons.call,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
                subtitle: Text(CallModel[i].time),
              )
            ]));
  }
}
