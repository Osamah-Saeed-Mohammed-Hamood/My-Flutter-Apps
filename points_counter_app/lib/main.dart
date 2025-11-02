import 'package:flutter/material.dart';

void main()
{
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget{
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}


class _PointsCounterState extends State<PointsCounter> {

  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(
              color: Colors.white
            ),
            ),
        ),
        body:Column(
          children: [
            const SizedBox(
              height: 32,
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
            Column(
          children: [
            Text(
              'Team A',
              style: TextStyle(
                fontSize: 37,
              ),
            ),
            Text(
              '$teamAPoints',
              style: TextStyle(
                fontSize: 150,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: (){
                setState(() {
                teamAPoints++;
                });
              },
              child: Text(
                'Add 1 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: (){
                setState(() {
                  teamAPoints += 2;
                });
              },
              child: Text(
                'Add 2 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: (){
                setState(() {
                  teamAPoints += 3;
                });
              },
              child: Text(
                'Add 3 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              ),
          ],
        ),
        const SizedBox(
          height: 500,
        child: VerticalDivider(
          color: Colors.grey,
          thickness: 1,
        ),
        ),
        Column(
          children: [
            Text(
              'Team B',
              style: TextStyle(
                fontSize: 37,
              ),
            ),
            Text(
              '$teamBPoints',
              style: TextStyle(
                fontSize: 150,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: (){
                setState(() {
                  teamBPoints += 1;
                });
              },
              child: Text(
                'Add 1 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: (){
                setState(() {
                  teamBPoints += 2;
                });
              },
              child: Text(
                'Add 2 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: (){
                setState(() {
                  teamBPoints += 3;
                });
              },
              child: Text(
                'Add 3 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              ),
          ],
        ),
          ],
        ),
        const Spacer(),
        ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: (){
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              ),
              const Spacer(),
      ]
      )
      ),
    );
  }
}