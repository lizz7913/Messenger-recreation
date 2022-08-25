import 'package:flutter/material.dart';
import 'package:hii/messenger.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Messenger(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              prefix: Icon(Icons.email),
            ),
          ),

          SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              prefix: Icon(Icons.lock),
              suffix: Icon(Icons.remove_red_eye),
            ),
          ),
        ],
      ),
    );
  }
}
