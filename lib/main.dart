import 'package:flutter/material.dart';
import 'package:plants/plantList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 17.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Top Picks',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 40.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Top',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Outdoor',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Indoor',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Plants',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                PlantList(),
                PlantList(),
                PlantList(),
                PlantList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
