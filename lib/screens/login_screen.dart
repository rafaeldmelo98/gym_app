import "package:flutter/material.dart";
import 'package:gym_app/values/custom_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool continueConnected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [CustomColors().getActivePrimaryButtonColor(),CustomColors().getGradientSecundaryColor()]),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 15,
                ),
                child: Image.asset(
                  "assets/dumbell.jpg",
                  height: 125,
                ),
              ),
              Text(
                "Entrar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: "e-mail",
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          )),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "senha",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              GestureDetector(
                child: Text(
                  "Esquece a senha?",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.right,
                ),
                onTap: () {
                  print("Funcionou");
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Row(
                children: [
                  Checkbox(
                      value: this.continueConnected,
                      onChanged: (bool? newValue) {
                        setState(() {
                          this.continueConnected = newValue!;
                        });
                      }),
                  Text(
                    "Continuar conectado?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    primary: CustomColors().getActivePrimaryButtonColor(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Text(
                "Ainda não tem uma conta?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  child: Text("Cadastre-se"),
                  style: ElevatedButton.styleFrom(
                    primary: CustomColors().getActiveSecundaryButtonColor(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}
