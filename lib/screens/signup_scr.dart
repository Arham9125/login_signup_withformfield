import 'package:firebaseproj/screens/login_page.dart';
import 'package:firebaseproj/widgets/extras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScr extends StatefulWidget {
  @override
  State<SignUpScr> createState() => _SignUpScrState();
}

class _SignUpScrState extends State<SignUpScr> {
  final FormKey = GlobalKey<FormState>();

   void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcont.dispose();
    passcont.dispose();
  }

  final emailcont = TextEditingController();

  final passcont = TextEditingController();
  final usernamecont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUpPage"),),
      body: Form(
        key: FormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [

            Text("SignUp", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
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
        controller: usernamecont,
        obscureText: false,
      
        decoration: InputDecoration(
          hintText: "Username",
          prefixIcon: Icon(Icons.people),
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
            child:  button("SignUp"),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do you have an account?"),
                TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }, child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)),
              ],
            )


          ],
        )),
    );
  }
}