import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}):super(key: key);

  @override
  State<LoginPage> createState() => _LoginPagestate();
}

class _LoginPagestate extends State<LoginPage>{
  bool _isObscure = true;

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginTest'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child:Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'ユーザー名を入力してください',
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              child: TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure? Icons.visibility_off:Icons.visibility
                    ),
                    onPressed: (){
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){},
                child: Text('ログイン '),
                ),
              )
          ],),)
      ),

    );
  }
}
