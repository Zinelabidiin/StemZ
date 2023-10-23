import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:stemz/models/chat_user.dart";

import "../main.dart";

class ChatUserCard extends StatefulWidget {
  final ChatUser user;
  const ChatUserCard({super.key, required ChatUser User, required this.user});
  @override 
  State<ChatUserCard> createState() => _ChatUserCardState();
}

class _ChatUserCardState extends State<ChatUserCard> {
  @override
  Widget build(BuildContext context){
    return Card(
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: (){},
        child: ListTile(
          leading: CircleAvatar(child: Icon (Icons.person)),
          title: Text(widget.user.name),
          subtitle: Text(widget.user.about, maxLines: 1),
          trailing: Text('4:20pm',style: TextStyle(color: Colors.black54))

          
          )
      ),
    );
  }
 

}
