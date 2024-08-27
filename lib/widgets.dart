
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Meu App', style: TextStyle(color: Colors.orange)),
      backgroundColor: Colors.blue,
      leading: Image.asset('assets/logo.png'),
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
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Texto Final',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
          Expanded(
            child: Text(
              'Complemento',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ],
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
        Image.asset('assets/facebook_icon.png', width: 60, height: 60),
        SizedBox(width: 8),
        Image.asset('assets/twitter_icon.png', width: 60, height: 60),
        SizedBox(width: 8),
        Image.asset('assets/instagram_icon.png', width: 60, height: 60),
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contate-nos:',
            style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('email@exemplo.com', style: TextStyle(color: Colors.white, fontSize: 14.0)),
          SizedBox(height: 8),
          Text('Telefone: (11) 99999-9999', style: TextStyle(color: Colors.white, fontSize: 14.0)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
