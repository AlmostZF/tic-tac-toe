import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tic_tac_toe/pages/game_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;
  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  bool brasil = true;
  bool english = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: firstColors,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.width * .8),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: defaultColors
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GamePage())
                  );
                },
                child: Text(AppLocalizations.of(context)!.play),
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.selectLanguage,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 3,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * .2),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    widget.setLocale(Locale.fromSubtags(languageCode: 'pt'));
                  },
                  child: Image(
                    image: AssetImage("img/brasil.png"),
                    height: 50,
                    width: 100,
                  ),
                ),
                Padding(padding: EdgeInsets.all(size.width * .04)),
                InkWell(
                  onTap: () {
                    widget.setLocale(Locale.fromSubtags(languageCode: 'en'));
                  },
                  child: Image(
                    image: AssetImage("img/usa.png"),
                    height: 80,
                    width: 80,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
