import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectarine_app_ui/pages/checkout.dart';
import 'package:nectarine_app_ui/pages/home.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xfffbfbfb),
      debugShowCheckedModeBanner: false,
      home: Container(
        height: 671,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/product_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 320, left: 7),
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 362.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 113,
                      width: 113,
                      child: Image.asset(
                        'assets/images/ing_2.png',
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      height: 113,
                      width: 113,
                      child: Image.asset(
                        'assets/images/ing_1.png',
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      height: 113,
                      width: 113,
                      child: Image.asset(
                        'assets/images/ing_3.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                width: 414,
                height: 208,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      HexColor('#28706c'),
                      HexColor('#103937'),
                      HexColor('#3a9590'),
                    ],
                    stops: [0, 1, 1],
                    begin: Alignment(-1.00, 0.00),
                    end: Alignment(1.00, -0.00),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Text(
                            "Rejuvinating Repair \nSerum",
                            style: TextStyle(
                              fontFamily: 'NotoSansJP_Regular',
                              color: Color(0xfffdfdfd),
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 100),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow,
                          ),
                          Text(
                            "4.8",
                            style: TextStyle(
                              fontFamily: 'NotoSansJP_Regular',
                              color: Color(0xffffffff),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "1.2k Reviews",
                        style: TextStyle(
                          fontFamily: 'NotoSansJP_Regular',
                          color: Color(0xfffdfdfd),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Text(
                            "AED 160",
                            style: TextStyle(
                              fontFamily: 'NotoSansJP_Regular',
                              color: Color(0xffffffff),
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Image.asset(
                            'assets/images/group_18.png',
                            fit: BoxFit.cover,
                            width: 117,
                            height: 27,
                          ),
                          SizedBox(width: 20.0),
                          Container(
                            width: 90,
                            height: 54,
                            decoration: new BoxDecoration(
                              color: Color(0xfffede35),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x33f1c24a),
                                    offset: Offset(0, 4),
                                    blurRadius: 8,
                                    spreadRadius: 0)
                              ],
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                  fontFamily: 'NotoSansJP_Regular',
                                  color: HexColor('#424140'),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
