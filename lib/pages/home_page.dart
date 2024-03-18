import 'package:chatapp/Auth/auth_service.dart';
import 'package:chatapp/services/chats_service.dart';
import 'package:flutter/material.dart';

import '../components/my_drawer.dart';
import '../components/user_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ChatService _chatService=ChatService();
  final AuthService _authService=AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Center(child: Text("H O M E")),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
      ),
      drawer: MyDrawer(),
      body:_buidUserList(),
    );
  }
  Widget _buidUserList(){
    return StreamBuilder(stream: _chatService.getUsersStream(),
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return const  Text("Error");
          }
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Text("Loading..");
          }

          return ListView(
            children: snapshot.data!.map<Widget>((userData) => _buildUserListItem(userData,context)).toList(),
          );
        },);
  }
  Widget _buildUserListItem(
      Map<String,dynamic> userData, BuildContext context
      ){
    if(userData["email"] != _authService.getCurrentUser()!.email){
      return UserTile(
        text: userData["email"],
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage(
              receiverEmail: userData["email"],
              receiverID: userData["uid"],
            ),),
          );
        },
      );
    }
    else{
      return Container();
    }
  }
}
