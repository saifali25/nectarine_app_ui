import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nectarine_app_ui/helper/productsData.dart';
import 'package:nectarine_app_ui/pages/getStarted.dart';
import 'package:nectarine_app_ui/pages/product.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                                builder: (context) => GetStarted()));
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
                SizedBox(height: 23.5),
                //Search Bar and Settings Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(7.5),
                      width: 294,
                      height: 48,
                      decoration: new BoxDecoration(
                        color: Color(0xffeeeeee),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 15.1),
                          Text(
                            'Search Products',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: HexColor('#424140'),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Container(
                      width: 50,
                      height: 48,
                      decoration: new BoxDecoration(
                        color: Color(0xffeeeeee),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/images/filter_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.5),
                Text(
                  "Top Selling \nProducts",
                  style: TextStyle(
                    fontFamily: 'NotoSansJP_Regular',
                    color: HexColor('#28706c'),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.56,
                  ),
                ),
                //Staggered Grid View
                Container(
                  height: 498,
                  margin: EdgeInsets.all(12),
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 16,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductView()));
                            },
                            // Has to return Card for listing Products
                            // but for the time being displaying a list of images
                            child: Image.asset(
                              imageList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                    },
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
