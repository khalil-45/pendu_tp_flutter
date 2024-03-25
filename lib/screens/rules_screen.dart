import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0),
                child: SingleChildScrollView(
                  child: Text(
                    "But du jeu : Le but du Pendu est de deviner un mot secret en proposant des lettres. Chaque lettre correcte révélée aide le joueur à deviner le mot, tandis que les lettres incorrectes entraînent la progression d'un dessin de pendu.\n\n"
                    "Déroulement du jeu :\n\n"
                    "Le jeu commence avec un mot secret caché, représenté par des tirets ou des cases vides, chacun représentant une lettre du mot.\n"
                    "Le joueur propose une lettre en tapant sur le clavier virtuel de l'application.\n"
                    "Si la lettre proposée est dans le mot secret, toutes les occurrences de cette lettre sont révélées dans le mot.\n"
                    "Si la lettre proposée n'est pas dans le mot secret, une partie du pendu est dessinée.\n"
                    "Le joueur continue à proposer des lettres jusqu'à ce qu'il devine le mot ou jusqu'à ce que le dessin du pendu soit complété.\n\n"
                    "Nombre de tentatives : Généralement, le joueur a un nombre limité de tentatives pour deviner le mot avant que le dessin du pendu ne soit complété. Ce nombre varie selon les paramètres de difficulté du jeu.\n\n"
                    "Fin du jeu :\n\n"
                    "Si le joueur devine correctement le mot avant que le dessin du pendu ne soit complété, il remporte la partie.\n"
                    "Si le dessin du pendu est complété avant que le joueur ne devine le mot, le joueur perd la partie.",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(6.0, 10.0, 6.0, 15.0),
              alignment: Alignment.topLeft,
              child: IconButton(
                tooltip: 'Home',
                iconSize: 35,
                icon: Icon(MdiIcons.home),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}