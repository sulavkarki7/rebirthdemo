import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/mcq_container_for_page_list.dart';

class McqPage extends StatefulWidget {
  const McqPage({super.key});

  @override
  State<McqPage> createState() => _McqPageState();
}

class _McqPageState extends State<McqPage> {
  @override
  Widget build(BuildContext context) {
    List<McqContainerForPageList> getMcQ = McqContainerForPageList.getMcq();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'All MCQs',
            style: appbarTitleStyle,
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: Get.height * 0.01,
            ),
            ListView.builder(
                itemCount: getMcQ.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return getMcQ[index];
                }),
          ],
        ));
  }
}
