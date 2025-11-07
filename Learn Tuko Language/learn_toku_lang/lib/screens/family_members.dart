import 'package:flutter/material.dart';
import 'package:learn_toku_lang/components/list_item.dart';
import 'package:learn_toku_lang/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichi oya',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Haha oya',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        foregroundColor: Colors.white,
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index){
          return ListItem(
            color: const Color(0xff558b37),
            item: familyMembers[index]);
        },
      )
    );
  }
}

