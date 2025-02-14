import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/constant/colors.dart';
import 'package:todo_app/models/numbers_model.dart';

class CustomContainerNumbers extends StatelessWidget {
  const CustomContainerNumbers({
    required this.numbersModel,
    super.key,
  });

  final NumbersModel numbersModel;
  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();

    return Container(
      width: double.infinity,
      height: 100,
      color: const Color(orangeColor),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(numbersModel.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numbersModel.numberJapanese,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  numbersModel.numberEnglish,
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
                  await audioPlayer.play(AssetSource(numbersModel.audioUrl));
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
