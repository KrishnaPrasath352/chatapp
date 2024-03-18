import 'package:chatapp/Auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/mytextfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _passcontroller=TextEditingController();
  final TextEditingController _conpasscontroller=TextEditingController();
  final void Function()? onTap;
  RegisterPage({super.key,required this.onTap});

  void register(BuildContext context){
    final _auth=AuthService();
    if(_passcontroller.text == _conpasscontroller.text){
      try{
        _auth.signUpWithEmailPassword(_emailcontroller.text, _passcontroller.text);
      }
      catch(e){
        showDialog(context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    else{
      showDialog(context: context,
        builder: (context) => const AlertDialog(
          title: Text("Password not match"),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message_rounded,color: Theme.of(context).colorScheme.primary,size: 50,),
            const SizedBox(height: 25,),
            Text("Let's create a new buddy!",style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 16),),
            const SizedBox(height: 25,),
            mytextField(hintText: "Email",checkit: false,controller: _emailcontroller),
            const SizedBox(height: 10),
            mytextField(hintText: "New password",checkit: true,controller: _passcontroller),
            const SizedBox(height: 10),
            mytextField(hintText: "Confirm password",checkit: true,controller: _conpasscontroller),
            const SizedBox(height: 25),
            myButton(
              name: "Register",
              onTap: () => register(context),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                GestureDetector(
                  onTap: onTap,
                  child: Text("Login now",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),),
                ),
              ],
            )
          ],

        ),
      ),
    );
  }
}
