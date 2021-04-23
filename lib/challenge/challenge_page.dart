import 'package:DevQuiz/challenge/challenge_controller.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widgets/nextButton/next_button_widget.dart';
import 'package:DevQuiz/challenge/widgets/questionIndicator/question_indicartor_widget.dart';
import 'package:DevQuiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({
    Key? key,
    required this.questions,
  }) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState(questions);
}

class _ChallengePageState extends State<ChallengePage> {
  final List<QuestionModel> questions;
  final controller = ChallengeController();
  final pageController = PageController();

  _ChallengePageState(this.questions);

  @override
  void init() {
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt();
    });
    controller.currentPageNotifier.addListener(() {
      print(controller.currentPage);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(128),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              QuestionIndicatorWidget(
                currentPage: controller.currentPage,
                length: widget.questions.length,
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        children: widget.questions
            .map(
              (e) => QuizWidget(question: e),
            )
            .toList(),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: NextButtonWidget.white(
                  label: "Pular",
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: NextButtonWidget.green(
                  label: "Confirmar",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
