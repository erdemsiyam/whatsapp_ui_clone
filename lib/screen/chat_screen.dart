import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/model/chat_item_model.dart';
import 'package:whatsapp_ui_clone/util/chat_helper.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, position) {
        ChatItemModel chatItemModel = chatList[position];
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(radius: 36),
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    child: Text(chatItemModel.name),
                    alignment: Alignment.centerLeft,
                  ),
                  Align(
                    child: Text(chatItemModel.mostRecentMessage),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              trailing: Text(chatItemModel.messageDate),
              // child: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     mainAxisSize: MainAxisSize.max,
              //     children: [
              //       Flexible(flex: 1, child: CircleAvatar(radius: 24)),
              //       Expanded(
              //         child: Column(
              //           children: [
              //             Text(chatItemModel.name),
              //             Text(chatItemModel.mostRecentMessage),
              //           ],
              //         ),
              //       ),
              //       Flexible(flex: 1, child: Text(chatItemModel.messageDate)),
              //     ],
              //   ),
              // ),
            ),
          ),
        );
      },
    );
  }
}
