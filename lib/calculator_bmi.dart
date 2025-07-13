import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  //change the discription
  String getInterPretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  Widget interPretationExtra() {
    if (_bmi >= 25) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Diet and Nutrition",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Reduce Calorie Intake:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Aim to reduce your daily calorie intake by 500-1000 calories to lose 1-2 pounds per week.\n"
            "• Control portion sizes and consider using smaller plates.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Focus on Whole Foods:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Prioritize fruits, vegetables, and whole grains.\n"
            "• Limit processed foods, sugary drinks, and unhealthy fats.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Meal Planning and Professional Guidance:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Consider meal planning and prepping to make healthier choices.\n"
            "• Consult a registered dietitian for personalized guidance.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Exercise",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Increase Physical Activity:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Aim for at least 150 minutes of moderate-intensity exercise per week.\n"
            "• Incorporate a mix of cardio and strength training.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Find Enjoyable Activities:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Choose activities you enjoy, such as brisk walking, cycling, swimming, or dancing.\n"
            "• Start slowly and gradually increase intensity and duration.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Consult Your Doctor:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Especially important if you have any health conditions before starting a new exercise program.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Support and Lifestyle",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Seek Support:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Talk to your doctor for personalized advice and to rule out underlying conditions.\n"
            "• Consider joining a weight management program for support and motivation.\n"
            "• Therapy or counseling can help if you struggle with emotional eating.\n"
            "• Enlist the support of friends and family.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Other Considerations:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Get enough sleep, as lack of sleep can affect hormones and weight loss.\n"
            "• Manage stress, as chronic stress can contribute to weight gain.\n"
            "• Track your progress to stay motivated and make adjustments as needed.",
            style: kBodyTextStyleExtra,
          ),
        ],
      );
    } else if (_bmi > 18.5) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Diet and Nutrition",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Eat More Calories:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Consume more high-calorie foods like nuts, avocados, and healthy oils.\n"
            "• Increase portion sizes during meals.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Choose Nutrient-Rich Foods:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Focus on foods rich in protein (lean meats, fish, eggs, legumes).\n"
            "• Include complex carbohydrates (whole grains, sweet potatoes) for sustained energy.\n"
            "• Eat plenty of fruits and vegetables for vitamins and minerals.",
            style: kBodyTextStyleExtra,
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Consult a Healthcare Professional:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "A doctor or registered dietitian can assess your individual needs, identify any potential health issues, and recommend a safe and effective weight gain plan. They can also help determine the appropriate rate of weight gain and monitor your progress.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Increase Calorie Intake:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Focus on adding healthy calories through nutrient-rich foods.\n"
            "• Eat more frequent, smaller meals and snacks throughout the day.\n"
            "• Include healthy fats like avocados, nuts, and olive oil in your diet.\n"
            "• Add extra calories to meals with cheese, nuts, seeds, or dried milk powder.\n"
            "• Consider high-calorie drinks like milkshakes or smoothies.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Choose Nutrient-Dense Foods:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Prioritize foods from all food groups: fruits, vegetables, whole grains, lean protein, and dairy or alternatives.\n"
            "• Incorporate protein-rich foods like beans, lentils, fish, eggs, and lean meat.\n"
            "• Choose whole-grain options over refined grains for added nutrients and fiber.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Incorporate Strength Training:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Engage in regular strength training exercises (such as weightlifting or yoga) to build muscle mass, which can contribute to a healthy weight gain.\n"
            "• Consult with a fitness professional for guidance on proper techniques and exercise routines.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Be Mindful of Eating Habits:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Avoid relying on unhealthy, high-calorie options like sugary drinks and processed foods.\n"
            "• Don't fill up on drinks before meals, as this can reduce your appetite for nutrient-rich foods.\n"
            "• Create a positive and enjoyable eating environment by dining with friends or family.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Address Underlying Medical Conditions:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• If your underweight status is related to an underlying medical condition or eating disorder, seek professional help.\n"
            "• Anorexia nervosa or other eating disorders require specialized treatment from a healthcare professional.",
            style: kBodyTextStyleExtra,
          ),
          const SizedBox(height: 10),
          Text(
            "Monitor Progress and Adjust:",
            style: kBodyTextStyleExtra.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "• Regularly monitor your weight, energy levels, and overall health.\n"
            "• Adjust your diet and exercise plan as needed in consultation with your healthcare provider.",
            style: kBodyTextStyleExtra,
          ),
        ],
      );
    }
  }
}
