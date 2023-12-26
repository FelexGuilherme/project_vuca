import 'package:flutter/material.dart';
import 'package:project_vuca/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 200,
                  child: Image.asset('assets/imagens/logo.png'),
                ),
                Container(
                  height: 5,
                ), //Adiciona uma imagem e da espaçamento

                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                
                ElevatedButton(
                    onPressed: () {
                      if (email == 'gui' && password == '123') {
                        print('correto');
                        Navigator.of(context).pushReplacementNamed('/home');
                        // navegação nomeada entre a PageLogin e a HomePage
                      } else {
                        print('Login inválido');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Color.fromARGB(255, 247, 116, 10)),
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                Container(
                  height: 10,
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                    // navegação nomeada entre a PageLogin e a HomePage
                  },
                  style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Color.fromARGB(255, 247, 116, 10)),
                  child: Container(
                      width: double.infinity,
                      child: Text(
                        'Cadastrar - se',
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
