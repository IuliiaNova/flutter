import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/message.dart';
import 'package:flutter_application_1/presentation/providers/chat_provider.dart';
import 'package:flutter_application_1/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/vector-gratis/mujer-adivina-caracter-cartas_603843-1331.jpg?w=826&t=st=1690966796~exp=1690967396~hmac=213e855dbfb70daa8d80e0224f5b5857210acc38e4078c9d59f955cdc670d7d8'),
            ),
          ),
          title: const Text('Tu adivina del dia'),
          centerTitle: true,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            controller: chatProvider.chatScrollController,
            itemCount: chatProvider.messageList.length,
            itemBuilder: (context, index) {
              final message = chatProvider.messageList[index];

              return (message.fromWho == FromWho.hers)
                  ? HerMessageBubble(message: message)
                  : MyMessageBubble(message: message);
            },
          )),

          /// caja de texto
          MessageFieldBox(
            onValue: (value) => chatProvider.sendMessage(value),
          ),
        ]),
      ),
    );
  }
}
