import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantList extends StatefulWidget {
  const PlantList({Key? key}) : super(key: key);

  @override
  State<PlantList> createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(
              left: 25.0,
            ),
            scrollDirection: Axis.horizontal,
            children: [
              getPlantCard(
                  'assets/whiteplant.png', '25', 'OUTDOOR', 'Aloe Vera')
            ],
          ),
        )
      ],
    );
  }

  getPlantCard(
      String imgPath, String price, String plantType, String plantName) {
    return Stack(
      children: [
        Container(
          height: 325.0,
          width: 225.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF399D63),
            ),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10.0),
                        Text(
                          'FROM',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFBAC7A4),
                          ),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 165.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plantType,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4),
                          ),
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
