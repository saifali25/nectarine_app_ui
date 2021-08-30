import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectarine_app_ui/pages/home.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xfffbfbfb),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 414,
              height: 569,
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Image.asset('assets/images/cover.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Container(
                      width: 200,
                      height: 53,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [
                            HexColor('#ffffff').withOpacity(0.1),
                            HexColor('#efefef')
                          ],
                          stops: [0, 1],
                          begin: Alignment(-1.00, 0.00),
                          end: Alignment(1.00, -0.00),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Healing Products",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: HexColor('#424140'),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 290, right: 4.5, top: 100.0),
                    child: Container(
                      width: 80,
                      height: 350,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/ellipse_8.png',
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 55.0),
                          Image.asset(
                            'assets/images/ellipse_9.png',
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 55.0),
                          Image.asset(
                            'assets/images/ellipse_10.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 152,
              alignment: Alignment.bottomCenter,
              color: Color(0xfffbfbfb),
              child: Column(
                children: [
                  Text(
                    "Nectarine Oils",
                    style: TextStyle(
                      fontFamily: 'NotoSansJP_Regular',
                      color: HexColor('#28706c'),
                      fontSize: 40,
                      //fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    "Maintain healthy skin",
                    style: TextStyle(
                      fontFamily: 'NotoSansJP_Light',
                      color: HexColor('#424140'),
                      fontSize: 18,
                      //fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 70,
                    height: 68,
                    decoration: new BoxDecoration(
                      color: HexColor('#28706c'),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x3328706c),
                            offset: Offset(0, 4),
                            blurRadius: 8,
                            spreadRadius: 0)
                      ],
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => HexColor('#28706c'),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('#f1c24a'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
