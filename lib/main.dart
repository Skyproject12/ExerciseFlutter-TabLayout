import 'package:flutter/material.dart'; 
import 'hal_komputer.dart' as komputer;
import 'hal_radio.dart' as radio;
import 'hal_headset.dart' as headshet;
import 'hal_smartphone.dart' as smartphone;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin { 
  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(vsync: this, length: 4);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(  
        backgroundColor: Colors.amber,
        title: new Text("Daftar Electronik"), 
        bottom: new TabBar( 
          controller: tabController, 
          tabs: <Widget>[ 
            new Tab( 
              icon: new Icon(Icons.computer),
              text: "Komputer",
            ), 
            new Tab( 
              icon: new Icon(Icons.headset),
              text: "Headset",
            ),
            new Tab( 
              icon: new Icon(Icons.radio), 
              text: "Radio",
            ), 
            new Tab( 
              icon: new Icon(Icons.smartphone), 
              text: "SmartPhone",
            ),
          ],
        ),
      ), 
      body: new TabBarView( 
        controller: tabController, 
        children: <Widget>[ 
          new komputer.Komputer(), 
          new headshet.Headset(),
          new radio.Radio(),
          new smartphone.SmartPhone(),
        ],
      ),
    );
  }
}