import 'package:flutter/material.dart';
import 'package:todo_app/constant/colors.dart';
import 'package:todo_app/models/numbers_model.dart';
import 'package:todo_app/widgets/custom_container_numbers.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<NumbersModel> numbers = [
      NumbersModel(
        numberEnglish: 'One',
        numberJapanese: 'ichi',
        image: 'assets/images/numbers/number_one.png',
        audioUrl: 'sounds/numbers/number_one_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Two',
        numberJapanese: 'ni',
        image: 'assets/images/numbers/number_two.png',
        audioUrl: 'sounds/numbers/number_two_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Three',
        numberJapanese: 'san',
        image: 'assets/images/numbers/number_three.png',
        audioUrl: 'sounds/numbers/number_three_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Four',
        numberJapanese: 'shi',
        image: 'assets/images/numbers/number_four.png',
        audioUrl: 'sounds/numbers/number_four_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Five',
        numberJapanese: 'go',
        image: 'assets/images/numbers/number_five.png',
        audioUrl: 'sounds/numbers/number_five_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Six',
        numberJapanese: 'roku',
        image: 'assets/images/numbers/number_six.png',
        audioUrl: 'sounds/numbers/number_six_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Seven',
        numberJapanese: 'nana',
        image: 'assets/images/numbers/number_seven.png',
        audioUrl: 'sounds/numbers/number_seven_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Eight',
        numberJapanese: 'hachi',
        image: 'assets/images/numbers/number_eight.png',
        audioUrl: 'sounds/numbers/number_eight_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Nine',
        numberJapanese: 'kyuu',
        image: 'assets/images/numbers/number_nine.png',
        audioUrl: 'sounds/numbers/number_nine_sound.mp3',
      ),
      NumbersModel(
        numberEnglish: 'Ten',
        numberJapanese: 'juu',
        image: 'assets/images/numbers/number_ten.png',
        audioUrl: 'sounds/numbers/number_ten_sound.mp3',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(prownColor),
          title: const Text('Numbers', style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) => CustomContainerNumbers(
            numbersModel: numbers[index],
          ),
        ),
      ),
    );
  }
}
