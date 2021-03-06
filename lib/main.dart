import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: NekkoCard(),
));

class NekkoCard extends StatefulWidget {
  const NekkoCard({Key? key}) : super(key: key);

  @override
  State<NekkoCard> createState() => _NekkoCardState();
}

class _NekkoCardState extends State<NekkoCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('NekkoCard'),
        centerTitle: true,
        backgroundColor:  Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level +=1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/zoro.jpg',
                ),
                radius: 40.0,
              ),
            ),

            Divider(height: 60.0,
            color:Colors.grey[800],
            ),
            Text(
                'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(height:10.0),
            Text(
                'Achyuth',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 30.0),
            Text(
              'HOMETOWN',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:10.0),
            Text(
              'Kurnool,India',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Text(
                'LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
            ),
            SizedBox(height:10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width:10.0),
                Text('achyut.nanda7093@gmail.com',
                style: TextStyle(
                  color:Colors.grey,
                  fontSize:16.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
