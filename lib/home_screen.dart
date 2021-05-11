import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:web_smiley/models/card.dart';

import 'models/constants.dart';
import 'models/question_model.dart';
import 'questions_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex;

  @override
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                child: Text(
                  "How are you feeling today?",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Container(
                height: 20.h,
                // color: Colors.white,

                child: ListView.builder(
                    itemCount: listOfSurveyCards.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (index == 0 || index == 1 || index == 2)
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => QuestionScreen(),
                              ),
                            );
                        },
                        child: Container(
                          margin: EdgeInsets.all(2.h),
                          width: 15.h,
                          decoration: BoxDecoration(
                            // color: listOfCards[index].isSelected ? Colors.redAccent : Colors.white,
                            color: selectedIndex == index
                                ? Colors.redAccent
                                : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Expanded(flex:1,child: Container()),
                              Expanded(
                                flex: 3,
                                child: SvgPicture.asset(
                                  listOfSurveyCards[index].image,
                                  height: 7.h,
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    listOfSurveyCards[index].name,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      );
                    }),
              )),
          Expanded(
              flex: 2,
              child: Container(
                  // color: Colors.green,
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/Logo.svg",
                          color: Colors.black,
                          height: 2.h,
                        ),
                      )
                      // color: Colors.cyan,
                      )))
        ],
      ),
    );
  }

  void fetchData() async {
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/data.json");
    final jsonResult = json.decode(data);

    Constants.questionsData = QuestionsData.fromJson(jsonResult);

    print(Constants.questionsData.questions[1].question);

    Constants.toBeAskedQuestion = [Constants.questionsData.questions[1]];
  }
}
