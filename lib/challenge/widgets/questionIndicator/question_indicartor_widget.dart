import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progressIndicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.length,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão ${currentPage}",
                  style: AppTextStyles.body,
                ),
                Text(
                  " de ${length}",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(value: currentPage / length)
          ],
        ),
      ),
    );
  }
}
