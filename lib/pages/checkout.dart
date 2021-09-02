import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectarine_app_ui/pages/product.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xfffbfbfb),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 0.0),
          child: Container(
            width: 414,
            height: 896,
            decoration: new BoxDecoration(color: Color(0xfffbfbfb)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Back Button + App Title + Profile Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductView()));
                      },
                    ),
                    Text(
                      'Nectarine Oils',
                      style: TextStyle(
                        fontFamily: 'NotoSansJP_Regular',
                        color: HexColor('#424140'),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Container(
                      width: 53,
                      height: 45,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x26000000).withOpacity(0.0),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/rectangle_3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  "Checkout",
                  style: TextStyle(
                    fontFamily: 'NotoSansJP_Regular',
                    color: HexColor('#28706c'),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.56,
                  ),
                ),
                /*
                Seperate Cards will be returned here
                But short on time so leaving it for 
                later upgrading
                */
                SizedBox(height: 10.0),
                Image.asset('assets/images/group_28.png'),
                SizedBox(height: 8.0),
                Image.asset('assets/images/group_29.png'),
                SizedBox(height: 8.0),
                Image.asset('assets/images/group_30.png'),
                SizedBox(height: 14.0),
                /*
                Payment Container needs to be constructed
                AT the moment, using an image for that
                */
                // Container(
                //   width: 354,
                //   height: 172,
                //   decoration: new BoxDecoration(
                //     borderRadius: BorderRadius.circular(12),
                //     gradient: LinearGradient(
                //       colors: [
                //         Color(0xffe3e3e3),
                //         Color(0xfff4f4f4),
                //         Color(0xffffffff)
                //       ],
                //       stops: [0, 0.6022318601608276, 1],
                //       begin: Alignment(-1.00, 0.00),
                //       end: Alignment(1.00, -0.00),
                //       // angle: 0,
                //       // scale: undefined,
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //           color: Color(0x26000000),
                //           offset: Offset(0, 2),
                //           blurRadius: 0,
                //           spreadRadius: 0),
                //     ],
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //         left: 12.0, top: 4.0, right: 12.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           "Payment",
                //           style: TextStyle(
                //             fontFamily: 'Poppins',
                //             color: Color(0xff000000),
                //             fontSize: 18,
                //             fontWeight: FontWeight.w500,
                //             fontStyle: FontStyle.normal,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             Text(
                //               "Items Quanitity",
                //               style: TextStyle(
                //                 fontFamily: 'Poppins',
                //                 color: Color(0xff000000),
                //                 fontSize: 10,
                //                 fontWeight: FontWeight.w500,
                //                 fontStyle: FontStyle.normal,
                //               ),
                //             ),
                //             SizedBox(width: 250.0),
                //             Text(
                //               "4",
                //               style: TextStyle(
                //                 fontFamily: 'Poppins',
                //                 color: Color(0xff000000),
                //                 fontSize: 12,
                //                 fontWeight: FontWeight.w500,
                //                 fontStyle: FontStyle.normal,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Image.asset('assets/images/group_31.png'),
                SizedBox(height: 6.0),
                Container(
                  width: 354,
                  height: 62,
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
                    onPressed: () {},
                    child: Text(
                      "Go to Checkout",
                      style: TextStyle(
                        fontFamily: 'NotoSansJP_Regular',
                        color: HexColor('#424140'),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
