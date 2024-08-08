import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                label: Text("Email"), hintText: "test@mail.com"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: pwdController,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Password should be more than 6 characters."),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (emailController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Email cannot be empty.")));
                return;
              }
              if (pwdController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Password cannot be empty.")));
                return;
              }
              if (pwdController.text.length < 6) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Password is too short.")));
                return;
              }
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          )
        ],
      ),
    );
  }
}
