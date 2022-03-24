import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:energycalc/contact.dart';
import 'package:energycalc/fizibilite.dart';
import 'package:energycalc/odemepage.dart';
import 'package:energycalc/referance.dart';
import 'package:flutter/material.dart';

/// This is the main application widget.
// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

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
                      color: Colors.black,
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
                    //  final player = AudioCache();
                    //player.play('assets/note1.wav');
                    //print('basıldı');
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
                  leading: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
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
                          print("Tap Event ekrana zaten buradasin yazdir");
                        },
                      ))),
              ListTile(
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.orange,
                  ),
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
                  leading: Icon(
                    Icons.list_alt,
                    color: Colors.purple,
                  ),
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
                  leading: Icon(
                    Icons.engineering,
                    color: Colors.blue[800],
                  ),
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
    return ListView.builder(
      //controller: controller,
      itemCount: 1,
      itemBuilder: (context, index) => ListTile(
        title: Column(children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/b.png"), fit: BoxFit.cover),
                    //    borderRadius: BorderRadius.circular(80),
                    color: Color(0xff186101),
                    border: Border.all(
                      color: Color.fromRGBO(5, 50, 50, 0.5),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 250,
                    //  height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(5, 50, 50, 0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              //  color: Colors.blueGrey[700],
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "(Güc Hesap Talebi) Tanımı: Tesisinizde olabilecek maksimum DC güç hesabı. İşlem için bina ölçülerinizi ve görsellerini göndermeniz yeterlidir, Enerji sistemleri Mühendisimiz en güncel teknolojiyle çatınıza veya arazinize uygulanabilir maksimum gücü hesaplayacaktır.",
                                  style: TextStyle(
                                    // backgroundColor: Colors.blueGrey,
                                    color: Color(0xffffffff),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                              width: 200,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 255, 0, 0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => OdemePage(),
                                      ),
                                    );
                                    CircularProgressIndicator();
                                  },
                                  child: Row(children: [
                                    Text(
                                      " İslem bedeli: 50.00TL.",
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/c.png"), fit: BoxFit.cover),
                    color: Color(0xff186101),
                    border: Border.all(
                      color: Color.fromRGBO(5, 50, 50, 0.5),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 250,
                    //  height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(5, 50, 50, 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "(Kurulu Güce Göre Üretim Hesap Talebi) Tanımı: Tesisinizde olabilecek maksimum DC gücün üretimi hesabı. Düşünülen Kurulu güç, konum ve montaj şekli yeterlidir, Enerji sistemleri Mühendisimiz en güncel teknolojiyle çatınıza veya arazinizin üretebileceği maksimum gücü hesaplayacaktır.",
                              style: TextStyle(
                                // backgroundColor: Colors.blueGrey,
                                color: Color(0xffffffff),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          width: 200,

                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 255, 0, 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OdemePage()),
                                );
                              },
                              child: Text(
                                " İşlem bedeli: 100.00TL.",
                                style: TextStyle(
                                  // backgroundColor: Colors.blueGrey,
                                  color: Color(0xffffffff),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/a.png"), fit: BoxFit.cover),
                    //    borderRadius: BorderRadius.circular(80),
                    color: Color(0xff186101),
                    border: Border.all(
                      color: Color.fromRGBO(5, 50, 50, 0.5),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 250,
                    //  height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(5, 50, 50, 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "(Kurulu Tesisin Verim Hesabı) Tanımı: Tesisinizin Bağımsız kuruluşlardan alınan üretim verileriyle üretmesi gereken değer çıkarılarak kaybınız hakkında bilgilendirileceksiniz. Keşif ve Tesis inceleme dahil değildir. Sizlerin vermiş olduğu güç, yıl, üretim vs bilgileri ile hesaplanacaktır.",
                              style: TextStyle(
                                // backgroundColor: Colors.blueGrey,
                                color: Color(0xffffffff),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 255, 0, 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OdemePage()),
                                );
                              },
                              child: Text(
                                " İşlem bedeli: 100.00TL.",
                                style: TextStyle(
                                  // backgroundColor: Colors.blueGrey,
                                  color: Color(0xffffffff),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/d.png"), fit: BoxFit.cover),
                    //    borderRadius: BorderRadius.circular(80),
                    color: Color(0xff186101),
                    border: Border.all(
                      color: Color.fromRGBO(100, 10, 10, 0.8),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 250,
                    //  height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(100, 10, 10, 0.8),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "(Fizibilite Raporu Talebi) Tanımı: Düşünülen kurulu güç, kararlaştırılan birim fiyat ve bir elektrik faturası örneğiyle amortisman tablosu oluşturulması, tüketim, üretim, mahsuplaşma raporu çıkarılması işlemidir.",
                              style: TextStyle(
                                // backgroundColor: Colors.blueGrey,
                                color: Color(0xffffffff),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 255, 0, 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OdemePage()),
                                );
                              },
                              child: Text(
                                " İşlem bedeli: 250.00TL.",
                                style: TextStyle(
                                  // backgroundColor: Colors.blueGrey,
                                  color: Color(0xffffffff),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/e.png"), fit: BoxFit.cover),
                    //    borderRadius: BorderRadius.circular(80),
                    color: Color(0xff186101),
                    border: Border.all(
                      color: Color.fromRGBO(100, 10, 10, 0.8),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 250,
                    //  height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(100, 10, 10, 0.8),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "(İzmir içi Kapsamlı Teklif Talebi) Tanımı: Tesise veya araziye mühendisler tarafından keşif amaçlı ziyaret, keşife göre kurulu güç hesabı, maliyet hesabı, üretim, tüketim, mahsuplaşma ve yasal süreçlerin oranizasyonu raporu.",
                              style: TextStyle(
                                // backgroundColor: Colors.blueGrey,
                                color: Color(0xffffffff),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 255, 0, 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OdemePage()),
                                );
                              },
                              child: Text(
                                " İşlem bedeli: 1250.00TL.",
                                style: TextStyle(
                                  // backgroundColor: Colors.blueGrey,
                                  color: Color(0xffffffff),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/a.jpg"), fit: BoxFit.cover),
                    //    borderRadius: BorderRadius.circular(80),
                    color: Color(0xff186101),
                    border: Border.all(
                      color: Color.fromRGBO(100, 10, 10, 0.8),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 250,
                    //  height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(100, 10, 10, 0.8),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "(İzmir Dışı Kapsamlı Teklif Talebi) Tanımı: Tesise veya araziye mühendisler tarafından keşif amaçlı ziyaret, keşife göre kurulu güç hesabı, Kullanılacak konnektör dahil malzeme marka ve adetleri, maliyet hesabı, üretim, tüketim, mahsuplaşma ve yasal süreçlerin oranizasyonu raporu.",
                              style: TextStyle(
                                // backgroundColor: Colors.blueGrey,
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 255, 0, 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          //  color: Colors.blueGrey[700],
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OdemePage()),
                                );
                              },
                              child: Text(
                                " İşlem bedeli: 1800.00TL.",
                                style: TextStyle(
                                  // backgroundColor: Colors.blueGrey,
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                /* MergeSemantics(
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: true,
                          onChanged: (bool? value) {
                            
                          },
                        ),
                        const Text('Settings'),
                      ],
                    ),
                  ),*/
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
