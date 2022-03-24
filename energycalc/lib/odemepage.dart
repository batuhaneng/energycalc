import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:energycalc/contact.dart';
import 'package:energycalc/referance.dart';
import 'package:flutter/material.dart';

class OdemePage extends StatefulWidget {
  const OdemePage({Key? key}) : super(key: key);

  @override
  _OdemePageState createState() => _OdemePageState();
}

class _OdemePageState extends State<OdemePage> {
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,

          // Spacer(flex: 15),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  width: 200.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Canterbury',
                      color: Colors.white,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      pause: Duration(milliseconds: 50),
                      animatedTexts: [
                        ScaleAnimatedText('Enerjini hesapla!'),
                        ScaleAnimatedText('Kazancini hesapla!'),
                        ScaleAnimatedText('Riske girme!'),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              FloatingActionButton(
                  backgroundColor: Colors.white10,
                  splashColor: Colors.green,
                  focusColor: Colors.green,
                  //foregroundColor: Colors.black,
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);

                    print('basıldı');
                  },
                  child: Image.asset(
                    'images/ww.gif',
                    height: 44.0,
                    width: 44.0,
                  )),
            ],
          ),
        ),
        drawer: Drawer(
          //elevation: 23.0,
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
                      onPressed: () {},
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
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);

                          print("Tap Event ekrana zaten buradasin yazdir");
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
                        print("Tap Event");
                      },
                    ),
                  )),
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/b.png"),
                  ),
                  //    borderRadius: BorderRadius.circular(80),
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
        ),
        body: const Odeme(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Odeme extends StatelessWidget {
  const Odeme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.orangeAccent,
      Colors.red,
      Colors.yellow,
      Colors.brown,
    ];
    const colorizeTextStyle = TextStyle(
        fontSize: 15.0, fontFamily: 'Horizon', fontWeight: FontWeight.bold);
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Online Ödeme Yakında Hizmete Girecektir...',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print("Tap Event ekrana zaten buradasin yazdir");
            },
          )),
        ),
        height: 170,
        width: 170,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/ww.gif"),
          ),
        ),
      ),
    );
  }
}
/*FloatingActionButton(
                  backgroundColor: Colors.white10,
                  splashColor: Colors.green,
                  focusColor: Colors.green,
                  //foregroundColor: Colors.black,
                  onPressed: () {
                    print('basıldı');
                  },
                  child: Image.asset(
                    'images/ww.gif',
                    height: 44.0,
                    width: 44.0,
                  )),*/
