import 'dart:convert';

class Userdata {
  String? name;
  Person? person;

  Userdata({this.person, this.name});

  factory Userdata.fromJson(Map<String, dynamic> json) {
    return Userdata(
        name: json["name"], person: Person.fromJson(json["person"]));
  }
}

class Person {
  String? adress;
  Media? media;
  List<Links>? links;

  Person({this.adress, this.media, this.links});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        adress: json["adress"],
        media: Media.fromJson(json["media"]),
        links: List<Links>.from(json["links"].map((x) => Links.fromJson(x))));
  }
}

class Media {
  String? facebook, instagarm;

  Media({this.facebook, this.instagarm});

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(facebook: json["facebook"], instagarm: json["instagram"]);
  }
}

class Links {
  String? name, links;

  Links({this.name, this.links});

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(links: json['links'], name: json['name']);
  }
}
