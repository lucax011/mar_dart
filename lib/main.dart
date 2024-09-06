import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitoramento de Áreas de Risco',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: MyAppBar(),
        body: Column(
          children: [
            Expanded(
                child: Center(
                    child: Text('Conteúdo Principal',
                        style: TextStyle(color: Colors.white)))),
            TextFinal(),
            SocialMediaRow(),
            ContactInfo(),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Meu App', style: TextStyle(color: Colors.orange)),
      backgroundColor: Colors.blue,
      leading: SvgPicture.asset('assets/icons/logo.svg'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class TextFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // Aqui podemos garantir que cada widget tenha restrições adequadas
            Text(
              'Texto Final',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            SizedBox(width: 8), // Adicione espaçamento
            Text(
              'Complemento',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 25),
        SvgPicture.asset('assets/icons/facebook_icon.svg',
            width: 60, height: 60),
        SizedBox(width: 8),
        SvgPicture.asset('assets/icons/twitter_icon.svg',
            width: 60, height: 60),
        SizedBox(width: 8),
        SvgPicture.asset('assets/icons/instagram_icon.svg',
            width: 60, height: 60),
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contate-nos:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('email@exemplo.com',
                  style: TextStyle(color: Colors.white, fontSize: 14.0)),
              SizedBox(height: 8),
              Text('Telefone: (11) 99999-9999',
                  style: TextStyle(color: Colors.white, fontSize: 14.0)),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
