import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widget/scorecard/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      height: 161,
                      decoration: BoxDecoration(gradient: AppGradients.linear),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(
                              style: AppTextStyles.title,
                              text: "Ola, ",
                              children: [
                                TextSpan(
                                    text: "Furtado",
                                    style: AppTextStyles.titleBold)
                              ])),
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/25510566?s=400&u=30776b634bd04e8fbbb9a858b00d3bbbba9b1141&v=4"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(alignment: Alignment(0.0,1.0),child: ScoreCardWidget())
                  ],
                )));
}
