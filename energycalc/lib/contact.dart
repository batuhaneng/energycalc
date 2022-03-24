import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:energycalc/verial.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
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
          child: Verial(),

          /*ListView(
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
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
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
                              builder: (context) => contactPage(),
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
                                builder: (context) => contactPage(),
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
                              builder: (context) => fizibilite(),
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
          ),*/
        ),
        body: const Odeme(),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class Odeme extends StatefulWidget {
  const Odeme({Key? key}) : super(key: key);
  @override
  _OdemeState createState() => _OdemeState();
}

class _OdemeState extends State<Odeme> {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch: $url";
    }
  }

  var tfController = TextEditingController();
  String alinanVeri = "";
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const colorizeColors = [
      Colors.orangeAccent,
      Colors.red,
      Colors.yellow,
      Colors.brown,
    ];
    const colorizeTextStyle = TextStyle(
        fontSize: 15.0, fontFamily: 'Horizon', fontWeight: FontWeight.bold);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/sun.gif",
            ),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'BATUHAN YILDIRIM:',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
              ),

              TextButton(
                //  icon: Icons.phone,
                onPressed: () => setState(() {
                  _makePhoneCall("tel:05077779260");
                }),
                child: Container(
                  height: 60,
                  width: 300,
                  //color: Colors.green,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(50, 225, 35, 0.7),
                    ),
                    child: Center(
                      child: Row(children: [
                        Icon(
                          Icons.contact_phone,
                          color: Colors.yellowAccent,
                          size: 30.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          " (+90) 507 777 92 60",
                          style: TextStyle(
                            // backgroundColor: Colors.blueGrey,
                            color: Colors.white70,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.flag,
                          color: Colors.red,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              //child: Container(color: Colors.green),

              //  title: "make", )

              //title: "make",

              TextButton(
                //  icon: Icons.phone,
                onPressed: () => setState(() {
                  _makePhoneCall("tel:05077779260");
                }),
                child: Container(
                  height: 60,
                  width: 300,
                  //color: Colors.green,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(50, 5, 5, 0.8),
                    ),
                    child: Center(
                      child: Row(children: [
                        Icon(
                          Icons.contact_mail,
                          color: Colors.blueAccent,
                          size: 30.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          " batuhanyildirim.energy@gmail.com",
                          style: TextStyle(
                            // backgroundColor: Colors.blueGrey,
                            color: Colors.white70,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              TextButton(
                //  icon: Icons.phone,
                onPressed: () {
                  const url =
                      'https://www.google.com/maps/dir//Yzb.+%C5%9Eerafettin+Bey+Sk.+No:33,+Alsancak,+35220+Konak%2F%C4%B0zmir,+T%C3%BCrkiye/@38.438103,27.144657,19.82z/data=!4m8!4m7!1m0!1m5!1m1!1s0x14bbd85cbb27d109:0x87486e65552f8cd9!2m2!1d27.1448924!2d38.4379228';
                  launchURL(url);
                },
                //onPressed: _launchURL,
                child: Container(
                  height: 60,
                  width: 300,
                  //color: Colors.green,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/wwmap.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(50, 5, 5, 0.5),
                    ),
                    child: Center(
                      child: Row(children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 34.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          " Haritada Göster",
                          style: TextStyle(
                            // backgroundColor: Colors.blueGrey,
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
