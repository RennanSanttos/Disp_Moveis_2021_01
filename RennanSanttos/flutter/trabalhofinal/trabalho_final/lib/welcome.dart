import 'package:flutter/material.dart';
import 'package:trabalho_final/login_page.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 40,
        ),
        color: Colors.lightBlue[200],
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset("assets/imagens/mobileapp.png"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Olá, Seja Bem vindo, ao trabalho Final da Disciplina de DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "PROFESSOR: Clayton Ferraz.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "ALUNO: Renan Santos.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "CURSO/PERIODO: ADS/ 5º Período.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(
                "assets/imagens/flutterDart.png",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Role a Pagina Para saber mais sobre o Aplicativo, e poder nevegar pelas telas..",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 75,
              height: 75,
              child: Image.asset(
                "assets/imagens/welcome.png",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 75,
              height: 75,
              child: Image.asset(
                "assets/imagens/play.png",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Telas da Aplicação:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "- LOGIN",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "- CADASTRO",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "- RECUPERAR SENHA",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "- MENU COM IMAGENS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 0.7, 1],
                  colors: [
                    Color(0xFF43F1DA),
                    Color(0xFF26B47E),
                    Color(0xFF17A747),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Clique Aqui, para ir até o login",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    ),
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Instituto Federal de Rondônia",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Campus - Ji - Paraná - RO",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
