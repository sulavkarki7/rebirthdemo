import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/mcq_qsn.dart';

class McqExamPage extends StatefulWidget {
  const McqExamPage({super.key});

  @override
  State<McqExamPage> createState() => _McqExamPageState();
}

class _McqExamPageState extends State<McqExamPage> {
  late Timer _timer;
  int _remainingTime = 1800; // 30 minutes in seconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
        Navigator.of(context).pop();
      }
    });
  }

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List<McqQsn> getQsN = McqQsn.getQsn();
    final bool isTimeLow = _remainingTime <= 300;
    final Color timerColor = isTimeLow ? Colors.red : const Color(0xFF2B3C98);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'MCQ Exam',
          style: appbarTitleStyle,
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.schedule,
                color: timerColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  _formatTime(_remainingTime),
                  style:
                      TextStyle(fontWeight: FontWeight.w600, color: timerColor),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: Get.height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  border: Border.all(
                    color: const Color(0xFF2B3C98),
                  )),
              child: PageView.builder(
                controller: _pageController,
                itemCount: getQsN.length,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return getQsN[index];
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              currentPage != 0
                  ? TextButton(
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        fixedSize: const Size(80, 40),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF2B3C98),
                      ),
                      onPressed: () {
                        log(' prev button tapped');
                        if (currentPage > 0) {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                          setState(() {
                            currentPage--;
                            log(currentPage.toString());
                          });
                        }
                      },
                      child: const Text('Previous'))
                  : const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextButton(
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      fixedSize: const Size(80, 40),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF2B3C98),
                    ),
                    onPressed: () {
                      log(' next button tapped');
                      if (currentPage < getQsN.length - 1) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                        setState(() {
                          currentPage++;
                          log(currentPage.toString());
                        });
                      }
                    },
                    child: const Text('Next')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
