class ApiResultModel {
  int count;
  List<Articles> entries;

  ApiResultModel({this.count, this.entries});

  ApiResultModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['entries'] != null) {
      entries = new List<Articles>();
      json['entries'].forEach((v) {
        entries.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.entries != null) {
      data['entries'] = this.entries.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  String aPI;
  String description;
  String auth;
  bool hTTPS;
  String cors;
  String link;
  String category;

  Articles(
      {this.aPI,
        this.description,
        this.auth,
        this.hTTPS,
        this.cors,
        this.link,
        this.category});

  Articles.fromJson(Map<String, dynamic> json) {
    aPI = json['API'];
    description = json['Description'];
    auth = json['Auth'];
    hTTPS = json['HTTPS'];
    cors = json['Cors'];
    link = json['Link'];
    category = json['Category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['API'] = this.aPI;
    data['Description'] = this.description;
    data['Auth'] = this.auth;
    data['HTTPS'] = this.hTTPS;
    data['Cors'] = this.cors;
    data['Link'] = this.link;
    data['Category'] = this.category;
    return data;
  }
}