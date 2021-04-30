import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(AnimeBilgiTesti());

class AnimeBilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.orangeAccent[700],
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  List <Widget> secimler = [];
  List <String> sorular = [
    'One Piece günümüzde en çok satan manga serisidir.',
    'Attack on Titan serisinin yazarı başrolün ismini Türk isminden esinlenerek koymuştur.',
    'Death Note 2009 yılında yayınlanmaya başlamıştır.',
    'One Piece A.C.E karakteri ilk kez 85.bölümde görülmüştür.',
    'Kamisama Hajimemashita romantik-komedi türündedir.',
    'Weebler günde 1 sezon anime bitirebilirler.',
    'Tokyo-Ghoulde baş karakterin ismi Yagami Lightdır.',
    'Avatar 230 yıl yaşamıştır ve en yaşlı avatardır.'

  ];
  List<bool> yanitlar = [true, true, false, false, true, true, false, true];
  int mevcutSoru = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                sorular[mevcutSoru],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 5,
          spacing: 5,
          direction: Axis.vertical,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            setState(() {
                              yanitlar[mevcutSoru] == false
                                  ? secimler.add(kDogruIconu)
                                  : secimler.add(kYanlisIconu);

                              mevcutSoru++;
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            setState(() {
                              yanitlar[mevcutSoru] == true
                                  ? secimler.add(kDogruIconu)
                                  : secimler.add(kYanlisIconu);

                              mevcutSoru++;
                            });
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}