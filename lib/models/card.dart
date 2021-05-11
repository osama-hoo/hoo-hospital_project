class SurveyCard {
  String image;
  String name;
  bool isSelected;

  SurveyCard({String image, String name, bool isSelected}) {
    this.name = name;
    this.isSelected = isSelected;
    this.image = image;
  }
}


List <SurveyCard> listOfSurveyCards = [

  SurveyCard(name: "Terrible",image: "assets/teriable.svg",isSelected: false ),
  SurveyCard(name: "Poor",image: "assets/poor.svg",isSelected: false ),
  SurveyCard(name: "Fair",image: "assets/fair.svg",isSelected: false ),
  SurveyCard(name: "Good",image: "assets/good.svg",isSelected: false ),
  SurveyCard(name: "Great",image: "assets/great.svg",isSelected: false ),

];


class DashboardCard {
  String icon;
  String name;
  bool isSelected;
  String info;

  DashboardCard({String icon, String name, bool isSelected,String info}) {
    this.name = name;
    this.isSelected = isSelected;
    this.icon = icon;
    this.info = info;
  }


}

List<DashboardCard> listOfDashboardCards = [

  DashboardCard(name: "Step Count",icon: "assets/stepcount.svg",info:"11,534 steps ",isSelected: false),
  DashboardCard(name: "Heart Rate",icon: "assets/heartrate.svg",info:"72 BPS",isSelected: false),
  DashboardCard(name: "Stair Climbed",icon: "assets/stairs1.svg",info:"8 times",isSelected: false),
  DashboardCard(name: "Time spent\nOutdoors",icon: "assets/outdoor.svg",info:"3.5 hours ",isSelected: false),
  DashboardCard(name: "Gait speed",icon: "assets/gaitspeed.svg",info:"0.4 m/s ",isSelected: false),


];