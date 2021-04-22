import 'package:DevQuiz/chalenge/widgets/questionIndicator/question_indicartor_widget.dart';
import 'package:DevQuiz/chalenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChalengePage extends StatefulWidget {
  ChalengePage({Key? key}) : super(key: key);

  @override
  _ChalengePageState createState() => _ChalengePageState();
}

class _ChalengePageState extends State<ChalengePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
            child: QuestionIndicatorWidget(),
          ),
        ),
        body: QuizWidget(title: "O que o flutter faz em sua totalidade?",),
      ),
    );
  }
}
