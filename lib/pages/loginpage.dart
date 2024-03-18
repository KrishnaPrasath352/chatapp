import 'package:chatapp/Auth/auth_service.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class loginPage extends StatelessWidget {
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _passcontroller=TextEditingController();
  final void Function()? onTap;
  loginPage({super.key,required this.onTap});

  void login(BuildContext context) async{
    final authService=AuthService();
    
    try{
      await authService.signInWithEmailPassword(_emailcontroller.text, _passcontroller.text,);
    }
    catch(e)
    {
      showDialog(context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
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
            Text("Welcome, buddy!",style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 16),),
            const SizedBox(height: 25,),
            mytextField(hintText: "Email",checkit: false,controller: _emailcontroller),
            const SizedBox(height: 10),
            mytextField(hintText: "Password",checkit: true,controller: _passcontroller),
            const SizedBox(height: 25),
            myButton(
              name: "Login",
              onTap: () => login(context),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? ",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                GestureDetector(
                  onTap: onTap,
                    child: Text("Register Now",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),)),
              ],
            )
          ],

        ),
      ),
    );
  }
}
