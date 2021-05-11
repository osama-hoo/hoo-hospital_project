import 'package:fl_chart/fl_chart.dart';

import 'question_model.dart';
import 'package:flutter/material.dart';

class Constants {
 static QuestionsData questionsData ;

 static List<Questions> toBeAskedQuestion =[];

 static List<String> wordsToBeBold =["SEVERITY",
  "FATIGUE","TIREDNESS","OR","LACK","OF","ENERGY",
  "INTERFERE","OFTEN","SEVERITY","INSOMNIA",
  "INCLUDING","DIFFICULTY","FALLING","ASLEEP",
  "STAYING", "WAKING","UP","EARLY","(",")",
  "PAIN","DECREASED","APPETITE","SHORTNESS","BREATH",
 "PROBLEMS","WITH","MEMORY","OFTEN","ANXIETY",
  "NAUSEA","SAD","UNHAPPY","FEELINGS",
  "NUMBNESS","TINGLING","CONSTIPATION",
  "LOOSE","WATERY","STOOLS(DIARRHEA/DIARRHOEA)","","",

 ];


}

List<PieChartSectionData> data = [
 PieChartSectionData(title: "Sleep",color: Colors.green,value: 10,showTitle: false),
 PieChartSectionData(title: "Light Activity",color: Colors.yellow,value: 50,showTitle: false),
 PieChartSectionData(title: "Sedentary",color: Colors.blue,value: 20,showTitle: false),
 PieChartSectionData(title: "Xyz",color: Colors.teal,value: 40,showTitle: false),




];
