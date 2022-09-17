

import 'package:firebaseproj/screens/signup_scr.dart';
import 'package:firebaseproj/widgets/extras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
 
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcont.dispose();
    passcont.dispose();
  }
  final emailcont = TextEditingController();

  final passcont = TextEditingController();

  final FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("LoginPage"),),
      body: Form(
        key: FormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [

            Text("Login", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),

            //Texfields//
            Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
       validator: ((value) {
         if(value!.isEmpty){
          return "Please enter all fields";
         }
       }),
        controller: emailcont,
        obscureText: false,
      
        decoration: InputDecoration(
          hintText: "Email",
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.all(8),
          
          prefixIconColor: Colors.deepOrange,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),

          
            
          ),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
          
          
          
        ),
        
      ),
    ),
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
       
        controller: passcont,
        obscureText: true,
        validator: ((value) {
         if(value!.isEmpty){
          return "Please enter all fields";
         }
       }),
      
        decoration: InputDecoration(
          hintText: "Password",
          prefixIcon: Icon(Icons.lock),
          contentPadding: EdgeInsets.all(8),
          
          prefixIconColor: Colors.deepOrange,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),

          
            
          ),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
          
          
          
        ),
        
      ),
    ),



            SizedBox(height: 40,),

           InkWell(
            onTap: () {
              if(FormKey.currentState!.validate());
            },
            child:  button("Login"),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScr()));
                }, child: Text("SignUp", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)),
              ],
            )


          ],
        )),
    );
  }
}