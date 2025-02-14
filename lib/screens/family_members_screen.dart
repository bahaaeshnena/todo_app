import 'package:flutter/material.dart';
import 'package:todo_app/constant/colors.dart';
import 'package:todo_app/models/family_members_model.dart';
import 'package:todo_app/widgets/custom_container_family_members.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<FamilyMembersModel> familyMembers = [
      FamilyMembersModel(
        nameEnglish: 'father',
        nameJapanese: 'Otōsan',
        image: 'assets/images/family_members/family_father.png',
        audioUrl: 'sounds/family_members/father.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'daughter',
        nameJapanese: 'Musume',
        image: 'assets/images/family_members/family_daughter.png',
        audioUrl: 'sounds/family_members/daughter.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'grandfather',
        nameJapanese: 'Ojiisan',
        image: 'assets/images/family_members/family_grandfather.png',
        audioUrl: 'sounds/family_members/grand father.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'mother',
        nameJapanese: 'Okāsan',
        image: 'assets/images/family_members/family_mother.png',
        audioUrl: 'sounds/family_members/mother.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'grandmother',
        nameJapanese: 'Obāsan',
        image: 'assets/images/family_members/family_grandmother.png',
        audioUrl: 'sounds/family_members/grand mother.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'older brother',
        nameJapanese: 'Oniisan',
        image: 'assets/images/family_members/family_older_brother.png',
        audioUrl: 'sounds/family_members/older bother.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'older sister',
        nameJapanese: 'Oneesan',
        image: 'assets/images/family_members/family_older_sister.png',
        audioUrl: 'sounds/family_members/older sister.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'son',
        nameJapanese: 'Musuko',
        image: 'assets/images/family_members/family_son.png',
        audioUrl: 'sounds/family_members/son.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'younger sister',
        nameJapanese: 'Imōto',
        image: 'assets/images/family_members/family_younger_sister.png',
        audioUrl: 'sounds/family_members/younger sister.wav',
      ),
      FamilyMembersModel(
        nameEnglish: 'younger brother',
        nameJapanese: 'Otōto',
        image: 'assets/images/family_members/family_younger_brother.png',
        audioUrl: 'sounds/family_members/younger brohter.wav',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(prownColor),
          title: const Text('Family Members',
              style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) => CustomContainerFamilyMembers(
            familyMembersModel: familyMembers[index],
          ),
        ),
      ),
    );
  }
}
