import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class McqQsn extends StatefulWidget {
  const McqQsn(
      {super.key,
      required this.questionNo,
      required this.totalQuestions,
      required this.questionText,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.option4});
  final int questionNo;
  final int totalQuestions;
  final String questionText;
  final String option1;
  final String option2;
  final String option3;
  final String option4;

  static List<McqQsn> getQsn() {
    return [
      const McqQsn(
          questionNo: 1,
          totalQuestions: 4,
          questionText:
              'What is the term for the process of converting raw materials, components, or parts into finished goods that meet a customer\'s expectations?',
          option1: 'Production',
          option2: 'Marketing',
          option3: 'Distribution',
          option4: 'Finance'),
      const McqQsn(
        questionNo: 2,
        totalQuestions: 4,
        questionText:
            'What is the term for the process of converting raw materials, components, or parts into finished goods that meet a customer\'s expectations?',
        option2: 'Marketing',
        option3: 'Distribution',
        option4: 'Finance',
        option1: 'Production',
      ),
      const McqQsn(
          questionNo: 3,
          totalQuestions: 4,
          questionText:
              'What is the term for the process of converting raw materials, components, or parts\'s expectations?',
          option1: 'Production',
          option2: 'Marketing',
          option3: 'Distribution',
          option4: 'Finance'),
      const McqQsn(
          questionNo: 4,
          totalQuestions: 4,
          questionText:
              'What is the term for the process of converting raw materials, components, or parts into finished goods that meet a customer\'s expectations?What is the term for the process of converting raw materials, componentet a customer\'s expectations?What is the term for the process of converting raw materials, componentet a customer\'s expectations?What is the term for the process of converting raw materials, components, or parts\'s expectations?',
          option1: 'Production',
          option2: 'Marketing',
          option3: 'Distribution',
          option4: 'Finance'),
    ];
  }

  @override
  State<McqQsn> createState() => _McqQsnState();
}

int _selectedAnswer = -1;

class _McqQsnState extends State<McqQsn> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: Get.width * 0.9,
              child: Text(
                'Q${widget.questionNo}/${widget.totalQuestions}: ${widget.questionText}',
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          ),
          Container(
            width: Get.width * 0.9,
            child: Column(
              children: [
                RadioListTile<int>(
                  value: 0,
                  groupValue: _selectedAnswer,
                  title: Text(
                    widget.option1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      _selectedAnswer = newValue!;
                    });
                  },
                  dense: true,
                  activeColor: const Color(0xFF2B3C98),
                ),
                RadioListTile<int>(
                  value: 1,
                  dense: true,
                  groupValue: _selectedAnswer,
                  title: Text(
                    widget.option2,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      _selectedAnswer = newValue!;
                    });
                  },
                  activeColor: const Color(0xFF2B3C98),
                ),
                RadioListTile<int>(
                  value: 2,
                  dense: true,
                  groupValue: _selectedAnswer,
                  title: Text(
                    widget.option3,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      _selectedAnswer = newValue!;
                    });
                  },
                  activeColor: const Color(0xFF2B3C98),
                ),
                RadioListTile<int>(
                  value: 3,
                  dense: true,
                  groupValue: _selectedAnswer,
                  title: Text(
                    widget.option4,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      _selectedAnswer = newValue!;
                    });
                  },
                  activeColor: const Color(0xFF2B3C98),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
