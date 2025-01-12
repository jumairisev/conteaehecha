import 'package:couteau/acercade.dart';
import 'package:flutter/material.dart' show AssetImage, BuildContext, CircleAvatar, Colors, Column, Drawer, EdgeInsets, FontWeight, Icon, Icons, ListTile, MaterialPageRoute, Navigator, Padding, SizedBox, StatelessWidget, Text, TextStyle, Widget;
import 'clima.dart';
import 'nombre.dart';
import 'universidades.dart';
import 'genero.dart';
import 'wordpress.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/jumairis.jpg')
            ),
            const Text(
              'Jumairis Encarnacion Valdez',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'valdezjumairis@gmai.com',
              style: TextStyle(fontSize: 16, color: Colors.lightBlue),
            ),
            const SizedBox(height: 30.0),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Generos'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Genero(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Edad'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Nombre(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Paises'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Uni(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_library),
              title: const Text('Clima'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Clima(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.business_center),
              title: const Text('WordPress'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NoticiasWordPress(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.business_center),
              title: const Text('Acerca de'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Contacto(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}