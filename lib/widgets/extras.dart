import 'package:firebaseproj/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldWidg extends StatelessWidget {
 
TextEditingController controller = TextEditingController();
String hinttext;
IconData prefixIcon;

bool isPass;

TextFieldWidg({required this.controller, required this.hinttext, required this.prefixIcon, this.isPass = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
       
        controller: controller,
        obscureText: isPass,
      
        decoration: InputDecoration(
          hintText: hinttext,
          prefixIcon: Icon(prefixIcon),
          contentPadding: EdgeInsets.all(8),
          
          prefixIconColor: Colors.deepOrange,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),

          
            
          ),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
          
          
          
        ),
        
      ),
    );
  }
}


 button(String text){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 50,
      width: double.infinity,
      
      decoration: BoxDecoration(
        
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(12)),
      child: Center(child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),),
  );
}


