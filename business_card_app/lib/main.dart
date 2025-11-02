import 'package:flutter/material.dart';

void main()
{
  runApp(const BusniessCardApp());
}

class BusniessCardApp extends StatelessWidget
{
  const BusniessCardApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircleAvatar(
              radius: 112,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('images/Osamah.png'),
                ),
              ),
            Text('Osamah Saeed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Pacifico',
            ),
            ),
            Text('FLUTTER DEVELOPER',
            style: TextStyle(
              color: Color(0xFF6C8090),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            Divider(
              color: Color(0xFF6C8090),
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
                ),
              child: ListTile(
                leading: Icon(
                    Icons.phone,
                    size: 32,
                    color: Color(0xFF2B475E),
                  ), 
                title: Text(
                    '(+967) 778 347 527',
                      style: TextStyle(
                      fontSize: 24,
                    ),
                    ), 
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8
              ),
              child: ListTile(
                leading: Icon(
                    Icons.mail,
                    size: 32,
                    color: Color(0xFF2B475E),
                  ), 
                title: Text(
                    'engosamah@gmail.com',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    ), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}