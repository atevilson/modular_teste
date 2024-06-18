import 'package:app_modular/src/shared/localization/translate_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslateApp(context).text("appBarTitleLogin")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email"
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Senha"
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () => Modular.to.navigate('/product'), 
                child:  Text(TranslateApp(context).text("bottomLogin"), style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),)),
              )
            ],
          ),
      ));
  }

}