import 'package:flutter/cupertino.dart';

class QuestionRecords extends StatelessWidget {
  QuestionRecords({super.key, required this.recordData});

  final List<Map<String, Object>> recordData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: recordData.map((record) {
            return Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 40.0,
                    height: 90.0,
                    decoration: ShapeDecoration(
                      color: Color.fromARGB(211, 47, 218, 214),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    ),
                    child: Center(
                      child: Text((record['index']).toString()),
                    ),
                  ),
                ),

                Expanded(
                  child: Column(
                    children: [
                      Text(
                        (record['question'].toString()),
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        textDirection: TextDirection.ltr,
                      ),
                      Text(
                        (record['correct_answer'].toString()),
                        style: const TextStyle(
                            color: Color.fromARGB(94, 0, 255, 0), fontSize: 12),
                        textDirection: TextDirection.ltr,
                      ),
                      Text(
                        (record['selected_answer'].toString()),
                        style: const TextStyle(
                            color: Color.fromARGB(94, 255, 0, 0), fontSize: 12),
                        textDirection: TextDirection.ltr,
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
