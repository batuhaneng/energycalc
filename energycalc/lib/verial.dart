import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:energycalc/contact.dart';
import 'package:energycalc/fizibilite.dart';
import 'package:energycalc/homepage.dart';
import 'package:energycalc/referance.dart';
import 'package:flutter/material.dart';

class Verial extends StatelessWidget {
  const Verial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.orange,
      Colors.blue,
      Colors.yellow,
      Colors.brown,
    ];
    const colorizeTextStyle = TextStyle(
      fontSize: 18.0,
      fontFamily: 'Horizon',
    );
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
              leading: Icon(
                Icons.expand_more,
              ),
              title: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Bolumler',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              )),
          ListTile(
              leading: Icon(Icons.home),
              title: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homepage(),
                        ));
                  },
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Ana Sayfa',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homepage(),
                          ));
                    },
                  ))),
          ListTile(
              leading: Icon(Icons.contact_mail),
              title: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactPage(),
                        ));
                  },

                  //MainPage
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'İletisim',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactPage(),
                          ));
                    },
                  ))),
          ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => referance(),
                        ));
                  },
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Referanslar',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => referance(),
                          ));
                    },
                  ))),
          ListTile(
              leading: Icon(Icons.build_circle),
              title: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Online Fizibilite',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Fizibilite(),
                        ));
                    print("Tap Event");
                  },
                ),
              )),
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/b.png"),
              ),
              //borderRadius: BorderRadius.circular(80),
            ),
            child: Align(),
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/gunes.jpg"),
              ),
            ),
            child: Align(),
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/e.png"),
              ),
            ),
            child: Align(),
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/b.png"),
              ),
            ),
            child: Align(),
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/a.jpg"),
              ),
            ),
            child: Align(),
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/c.png"),
              ),
            ),
            child: Align(),
          ),
        ],
      ),
    );
  }
}
