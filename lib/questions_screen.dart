import 'dart:convert';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:web_smiley/models/constants.dart';
import 'package:web_smiley/models/question_model.dart';

import 'models/card.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  // String userSelectedValue = "TwelveCoreSymptoms";
  List<Options> listOfOptions;
  List<Options> listOfSelectedOptions=[];
  Options userSelectedValue;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Container(
                child: Text(
                  Constants.toBeAskedQuestion.isNotEmpty
                      ? Constants.toBeAskedQuestion[0].question
                      : "",
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),

          //Options
          Constants.toBeAskedQuestion.isNotEmpty
              ? Expanded(
                  flex: 4,
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(10.0),
                      child: Wrap(
                        spacing: 10.0, // gap between adjacent chips
                        runSpacing: 4.0, // gap between lines
                        children: List.generate(
                            Constants.toBeAskedQuestion[0].options.length,
                            (index) {
                          List<Options> currentOptions =
                              Constants.toBeAskedQuestion[0].options;

                          return InkWell(
                            onTap: () {
                              if (Constants.toBeAskedQuestion[0].type ==
                                  "multi") {setState(() {
                                currentOptions[index].isSelected=true;
                                  });

                                listOfSelectedOptions
                                    .add(currentOptions[index]);
                              } else {
                                userSelectedValue = currentOptions[index];
                                setState(() {
                                  proceedToNextQuestion();
                                });
                              }
                              ;
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(10),
                              child: Text(
                                currentOptions[index].label,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14.sp),
                              ),
                              decoration: BoxDecoration(
                                color: currentOptions[index].isSelected ? Color(0xff00CCCC) : Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      )),
                )
              : Container(),

          Constants.toBeAskedQuestion.isNotEmpty
              ? Constants.toBeAskedQuestion[0].next.isNotEmpty
                  ? MaterialButton(
                      color: Colors.red,
                      height: 4.h,
                      minWidth: 10.h,
                      child: Text(
                        "Next Step",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          Constants.toBeAskedQuestion.add(Constants
                              .questionsData.questions
                              .where((element) =>
                                  element.name == userSelectedValue.next)
                              .first);
                          Constants.toBeAskedQuestion.removeAt(0);
                        });
                      },
                    )
                  : Container()
              : Container(),

          ///for bottom logos
          Expanded(
            flex: 1,
            child: Container(
                //  color: Colors.yellowAcwhcent,
                ),
          )
        ],
      ),
    );
  }

  void fetchData() async {
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/data.json");
    final jsonResult = json.decode(data);

    Constants.questionsData = QuestionsData.fromJson(jsonResult);

    print(Constants.questionsData.questions.first.question);

    setState(() {
      Constants.toBeAskedQuestion = [Constants.questionsData.questions.first];
    });
  }

  void proceedToNextQuestion() {
    print("I am the issue");
    Constants.toBeAskedQuestion.add(Constants.questionsData.questions
        .where((element) => element.name == userSelectedValue.next)
        .first);
    Constants.toBeAskedQuestion.removeAt(0);
  }
}
