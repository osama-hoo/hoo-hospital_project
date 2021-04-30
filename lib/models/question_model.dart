class QuestionsData {
  List<Questions> questions;

  QuestionsData({this.questions});

  QuestionsData.fromJson(Map<String, dynamic> json) {
    if (json['questions'] != null) {
      questions = new List<Questions>();
      json['questions'].forEach((v) {
        questions.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  String question;
  String type;
  String next;
  String name;

  List<Options> options;
  String prompt;

  Questions(
      {this.question,
        this.type,
        this.next,
        this.name,
        this.options,
        this.prompt});

  Questions.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    type = json['type'];
    next = json['next'];
    name = json['name'];

    if (json['options'] != null) {
      options = new List<Options>();
      json['options'].forEach((v) {
        options.add(new Options.fromJson(v));
      });
    }
    prompt = json['prompt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['type'] = this.type;
    data['next'] = this.next;
    data['name'] = this.name;
    if (this.options != null) {
      data['options'] = this.options.map((v) => v.toJson()).toList();
    }
    data['prompt'] = this.prompt;
    return data;
  }
}

class Options {
  String icon;
  String label;
  bool isSelected;
  String next;

  Options({this.icon, this.label, this.next});

  Options.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    label = json['label'];
    next = json['next'];
    isSelected= false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['label'] = this.label;
    data['next'] = this.next;
    return data;
  }
}
