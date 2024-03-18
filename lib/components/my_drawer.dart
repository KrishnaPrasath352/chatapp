import 'package:chatapp/Auth/auth_service.dart';
import 'package:flutter/material.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  void logout(){
    final _auth=AuthService();
    _auth.signOut();
  }
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(Icons.person,
                    color: Theme.of(context).colorScheme.primary,
                    size: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("H O M E"),
                  leading: Icon(Icons.home,
                    color: Theme.of(context).colorScheme.inversePrimary,),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("S E T T I N G S"),
                  leading: Icon(Icons.settings, color: Theme.of(context).colorScheme.inversePrimary,),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => settingsPage(),));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("L O G O U T"),
                  leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.inversePrimary,),
                  onTap: logout,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
