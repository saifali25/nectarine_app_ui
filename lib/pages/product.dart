import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
        width: MediaQuery.of(context).size.width,
        height: 896,
        decoration: new BoxDecoration(
          color: Color(0xfffbfbfb),
        ),
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset('assets/images/product_bg.png'),
              Column(
                children: [
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.arrow_back_ios),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 500),
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

                        //child: Image.asset('assets/images/img_1.png'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
