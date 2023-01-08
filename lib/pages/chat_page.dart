import 'package:chat_app/pages/group_info.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String grpId;
  final String grpName;
  final String userName;

  const ChatPage({
    super.key,
    required this.grpId,
    required this.grpName,
    required this.userName,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(widget.grpName),
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(
                onPressed: () {
                  nextScreen(context, const GroupInfo());
                },
                icon: const Icon(Icons.info))
          ]),
      body: Center(
        child: Text(widget.grpName),
      ),
    );
  }
}
