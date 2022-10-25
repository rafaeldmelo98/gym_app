import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gym_app/values/custom_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 50,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                CustomColors().getGradientMainColor(),
                CustomColors().getGradientSecundaryColor()
              ]),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text("Cadastro"),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    autofocus: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Nome completo",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: !showPassword,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    autofocus: true,
                    obscureText: !showPassword,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Confirme sua senha",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.showPassword,
                        onChanged: (bool? newValue) {
                          setState(() {
                            this.showPassword = newValue!;
                          });
                        },
                      ),
                      Text(
                        "Mostrar senha",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cadastrar"),
              style: ElevatedButton.styleFrom(
                primary: CustomColors().getActiveSecundaryButtonColor(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
