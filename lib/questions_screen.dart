import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:web_smiley/models/constants.dart';
import 'package:web_smiley/models/question_model.dart';

import 'models/constants.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  // String userSelectedValue = "TwelveCoreSymptoms";
  List<Options> listOfOptions;
  List<Options> listOfSelectedOptions = [];
  Options userSelectedValue;

  @override
  Widget build(BuildContext context) {
    Constants.toBeAskedQuestion.forEach((element) {
      print(element.name + "\n");
    });
    print("--------------------/end here\--------------------");
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///for Questions
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width - 200,
              child: Center(
                child: questionText(
                  Constants.toBeAskedQuestion.isNotEmpty
                      ? Constants.toBeAskedQuestion[0].question
                      : "",
                ),
              ),
            ),
          ),

          /// for Options
          Constants.toBeAskedQuestion.isNotEmpty
              ? Expanded(
                  flex: 4,
                  child: Center(
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

                            return ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              child: InkWell(
                                onTap: () {
                                  if (Constants.toBeAskedQuestion[0].type ==
                                      "multi") {
                                    setState(() {
                                      if (!currentOptions[index].isSelected) {
                                        currentOptions[index].isSelected = true;
                                        listOfSelectedOptions
                                            .add(currentOptions[index]);
                                      } else {
                                        currentOptions[index].isSelected =
                                            false;
                                        listOfSelectedOptions
                                            .remove(currentOptions[index]);
                                      }
                                    });
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8.sp),
                                  ),
                                  decoration: BoxDecoration(
                                    color: currentOptions[index].isSelected
                                        ? Color(0xff00CCCC)
                                        : Colors.white,
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
                              ),
                            );
                          }),
                        )),
                  ),
                )
              : Container(),

          Constants.toBeAskedQuestion.isNotEmpty
              ? Constants.toBeAskedQuestion[0].type == "multi"
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
                          listOfSelectedOptions.forEach((selectedOption) {
                            Constants.toBeAskedQuestion.add(Constants
                                .questionsData.questions
                                .where((element) =>
                                    element.name == selectedOption.next)
                                .first);
                          });
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

  Widget questionText(String originalQuestion) {
    List<TextSpan> question = [];

    List<String> breakString = originalQuestion.split(" ");

    breakString.forEach((word) {
      if (Constants.wordsToBeBold.contains(word)) {
        question.add(
          TextSpan(
            text: word + " ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
          ),
        );
      } else {
        question.add(TextSpan(
            text: word + " ",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 22.sp)));
      }
    });

    /// return
    return RichText(
      textAlign: TextAlign.center,
      text: new TextSpan(text: '', children: question),
    );

    // ? original code
    // return Text(
    //             Constants.toBeAskedQuestion.isNotEmpty
    //                 ? Constants.toBeAskedQuestion[0].question
    //                 : "",
    //             textAlign: TextAlign.center,
    //             style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w900),
    //           );
  }

  void proceedToNextQuestion() {
    print("I am the issue");

    if (userSelectedValue.next.isNotEmpty) {
      Constants.toBeAskedQuestion.add(Constants.questionsData.questions
          .where((element) => element.name == userSelectedValue.next)
          .first);
      Constants.toBeAskedQuestion.removeAt(0);
    }
  }
}
