import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Book Exchange",
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight:  FontWeight.w900,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter Email",
                  border: OutlineInputBorder(),
                  prefixIcon:  Icon(Icons.email)
                ),
              ),
       const SizedBox(
                height: 25,
              ),
            TextFormField(
                
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder(),
                  prefixIcon:  Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
const SizedBox(
  height: 5,
),
  Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      TextButton(onPressed: (){}, child: const Text( "Forgot Password?"))
    ],
  ),
  const SizedBox(
    height: 25,
  ),
Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius:  BorderRadius.circular(100),
      gradient: const LinearGradient(colors: [Colors.red, Colors.teal]),
      
    ),
    child: MaterialButton(
      onPressed: (){},
      child: Text("Login",
      style: TextStyle(
          fontSize: 25,
          color: Colors.white
      ),
      ),
    ),
),
  const SizedBox(
    height: 30,
  ),
  const Divider(
    height: 30,
    color: Colors.black,
  ),
  const SizedBox(
    height: 10,
  ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text( "Don't have an account? ",
      style: TextStyle(
          color: Colors.black.withOpacity(0.8),
      ),
      ),
      TextButton(onPressed: (){}, child: const Text( "Register Account"))
    ],
  ),
            ],
          ),
        ),
      ),
    );
  }
}