import 'package:flutter/material.dart';
import 'package:mediapp/component/text_field.dart';

import 'home.dart';

  usernameValidator (String username) {
      if(username.isEmpty){
        return 'Username empty';
      }else if(username.length < 3){
        return 'Username short';
      }
      return null;
  }

class LoginForm extends StatefulWidget {  
  @override  
  Login createState() {  
    return Login();  
  }  
}  
class Login extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();  
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(20)
        ),
        width: width - 20,
        height: height / 2,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MediTextFiled(
                controller: email,
                hintText: "Email",
                helpText: "Email",
                prefixIcon: Icons.email,
                suffixIcon: Icons.email, 
                borderColor: Colors.amberAccent, 
                isEnabled: true, 
                isPassword: false, 
                isReadOnly: false,
                // validator: usernameValidator,
            ),
            MediTextFiled(
                controller: password,
                hintText: "Password",
                helpText: "Password",
                prefixIcon: Icons.password,
                suffixIcon: Icons.lock_open, 
                borderColor: Colors.amberAccent, 
                isEnabled: true, 
                isPassword: true, 
                isReadOnly: false,
                // validator: usernameValidator,
            ),
            Container(  
                padding: const EdgeInsets.only(top: 40.0),  
                child: Center(
                  child: ElevatedButton(  
                    child: const Text('Submit'),  
                    onPressed: () {  
                      if (_formKey.currentState!.validate()) {  
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      }  
                    },  
                  ),
                )),  
          ],
        ),
      ),
    );
  }

}