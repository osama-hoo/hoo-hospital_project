class Card {
  String image;
  String name;
  bool isSelected;

  Card({String image, String name, bool isSelected}) {
    this.name = name;
    this.isSelected = isSelected;
    this.image = image;
  }
}


List <Card> listOfCards = [

  Card(name: "Terrible",image: "assets/teriable.svg",isSelected: false ),
  Card(name: "Poor",image: "assets/poor.svg",isSelected: false ),
  Card(name: "Fair",image: "assets/fair.svg",isSelected: false ),
  Card(name: "Good",image: "assets/good.svg",isSelected: false ),
  Card(name: "Great",image: "assets/great.svg",isSelected: false ),

];
