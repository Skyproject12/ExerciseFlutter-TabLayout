import 'package:flutter/material.dart'; 
class Komputer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center( 
        child:new Column( 
          children: <Widget>[  
             new Padding( padding: new EdgeInsets.all(20.0),), 
            new Text("Komputer", style:  new TextStyle(fontSize: 30.0),), 
            new Padding( padding: new EdgeInsets.all(20.0),), 
            new Icon(Icons.computer, size: 90.0,)
          ],
        ),
      ),
    );
  }
}