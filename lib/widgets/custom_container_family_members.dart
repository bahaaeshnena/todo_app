import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/constant/colors.dart';
import 'package:todo_app/models/family_members_model.dart';

class CustomContainerFamilyMembers extends StatelessWidget {
  const CustomContainerFamilyMembers({
    required this.familyMembersModel,
    super.key,
  });

  final FamilyMembersModel familyMembersModel;
  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();

    return Container(
      width: double.infinity,
      height: 100,
      color: const Color(greenColor),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(familyMembersModel.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  familyMembersModel.nameJapanese,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  familyMembersModel.nameEnglish,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () async {
                try {
                  await audioPlayer
                      .play(AssetSource(familyMembersModel.audioUrl));
                } catch (e) {
                  print('Error playing audio: $e');
                }
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
