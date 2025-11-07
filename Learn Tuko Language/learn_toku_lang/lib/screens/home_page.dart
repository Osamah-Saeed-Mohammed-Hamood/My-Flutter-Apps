import 'package:flutter/material.dart';
import 'package:learn_toku_lang/components/category_item.dart';
import 'package:learn_toku_lang/screens/color_page.dart';
import 'package:learn_toku_lang/screens/family_members.dart';
import 'package:learn_toku_lang/screens/numbers_page.dart';
import 'package:learn_toku_lang/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffef6db),
        appBar: AppBar(
          backgroundColor: Color(0xFF46322B),
          title: Text(
            'Toku',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Category(
              onTab: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return const NumbersPage();
                  })
                );
              },
              text: 'Numbers',
              color: Color(0xffef9235),
            ),
            Category(
              onTab: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return const FamilyMembersPage();
                  })
                );
              },
              text: 'Family Members',
              color: Color(0xff558b37),
            ),
            Category(
              onTab: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return const ColorPage();
                  })
                );
              },
              text: 'Colors',
              color: Color(0xff79359f),
            ),
            Category(
              onTab: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return const PhrasesPage();
                  })
                );
              },
              text: 'Phrases',
              color: Color(0xff50adc7),
            ),
          ],
        ),
      );
  }
}

