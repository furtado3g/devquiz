import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widget/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 14),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(20)),
        height: 136,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: CharWidget(),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vamos começar",
                        style: AppTextStyles.heading,
                      ),
                      Text("Complete os desafios e avance em conhecimento",
                          style: AppTextStyles.body)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}