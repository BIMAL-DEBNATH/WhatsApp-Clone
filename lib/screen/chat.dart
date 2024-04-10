import 'package:chatsapp/widget/chat_message.dart';
import 'package:chatsapp/widget/new_message.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void setupPushNotification() async {
    final fcm = FirebaseMessaging.instance;
    // final notificationSettings = await fcm.requestPermission();
    // notificationSettings.alert,..
    await fcm.requestPermission();
    // final token = await fcm
    //     .getToken(); //getToken is the adress of device in wich app is running
    // print(token);
    fcm.subscribeToTopic('chat'); //send notification to everyone on chat topic
  }

  @override
  void initState() {
    super.initState();
    //we are calling becouse initState call by flutter and does not suppot anync
    setupPushNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.exit_to_app,
                color: Theme.of(context).colorScheme.primary),
          ),
        ],
        title: const Text('FlutterChat'),
      ),
      body: const Center(
        child: Column(
          children: [
            //expended to push end
            Expanded(child: ChatMessage()),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
