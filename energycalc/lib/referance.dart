import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:energycalc/contact.dart';
import 'package:energycalc/fizibilite.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

/// This is the main application widget.
///
// ignore: camel_case_types
class referance extends StatelessWidget {
  const referance({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

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
      title: _title,
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
                  //   width: 200.0,
                  width: 200,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Canterbury',
                      color: Colors.black,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        ScaleAnimatedText('Enerjini hesapla!'),
                        ScaleAnimatedText('Kazancını öğren!'),
                        ScaleAnimatedText('Riske girme!'),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () {
                        print("Tap Event");
                      },
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
                    print("Tap Event");
                    /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homepage(),
                        ));*/

                    Navigator.of(context).popUntil((route) => route.isFirst);
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
        body: const MyStatelessWidget(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 90,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) => Center(
              child: ListTile(
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/71.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/72.jpg"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/73.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/74.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/75.jpg"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/76.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/77.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 100, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/78.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 1, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/79.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 1, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/80.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 1, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/81.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                      DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.5, -0.6),
                            radius: 0.15,
                            colors: <Color>[
                              Color.fromRGBO(10, 100, 1, 0.8),
                              Color.fromRGBO(10, 1, 100, 0.8),
                            ],
                            stops: <double>[0.9, 1.0],
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/82.png"),
                          ),
                          border: Border.all(
                            //color: Color.fromRGBO(10, 100, 100, 0.8),
                            width: 8,
                          ),
                        ),
                        child: Align(),
                      ),
                    ]),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 15,
          child: Center(
            child: TextButton(
              //  icon: Icons.phone,
              onPressed: () {
                const url =
                    'https://www.youtube.com/watch?v=TyrEYJ20t9s&list=UUgCesBQySDN8U-laUE8tBXg';
                launchURL(url);
              },
              //onPressed: _launchURL,
              child: Container(
                height: 360,
                width: 300,
                //color: Colors.green,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/youtuber.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(50, 5, 5, 0.5),
                  ),
                  child: Row(children: [
                    /* Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 34.0,
                      semanticLabel:
                          'Text to announce in accessibility modes',
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),*/
                    /*Text(
                      " Haritada Göster",
                      style: TextStyle(
                        // backgroundColor: Colors.blueGrey,
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),*/
                  ]),
                ),
              ),
            ),
          ),
        ),
        /*Expanded(
          flex: 8,
          child: Center(
            child: Container(
              color: Colors.white10,

              // height: 200,
              // width: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('3D Cizimler'),
                      WavyAnimatedText('BATUHAN YILDIRIM'),
                    ],
                    isRepeatingAnimation: false,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            ),
          ),
        ),*/
      ],
    );
  }
}
