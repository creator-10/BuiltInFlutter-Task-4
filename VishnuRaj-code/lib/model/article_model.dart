// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.status,
        required this.totalResults,
        required this.articles,
    });

    final String status;
    final int totalResults;
    final List<Article> articles;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
    };
}

class Article {
    Article({
       
        //required this.author,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        //required this.publishedAt,
        //required this.content,
    });
 
    //final Source source;
    //final String author;
    final String title;
    final String description;
    final String url;
    final String urlToImage;
   // final DateTime publishedAt;
    //final String content;

    factory Article.fromJson(Map<String, dynamic> json) => Article(
       // source: Source.fromJson(json["source"]),
       // author: json["author"] == null ? null : json["author"],
        title: json["title"] as String,
        description: json["description"] as String,
        url: json["url"] as String,
        urlToImage: json["urlToImage"] as String,
       // publishedAt: DateTime.parse(json["publishedAt"]),
        //content: json["content"] == null ? null : json["content"],
    );

 

    Map<String, dynamic> toJson() => {
        //"source": source.toJson(),
        //"author": author == null ? null : author,
        "title": title,
        "description":  description,
        "url": url,
        "urlToImage": urlToImage as String?,
       // "publishedAt": publishedAt.toIso8601String(),
        //"content": content == null ? null : content,
    };
}

// class Source {
//     Source({
//         required this.id,
//         required this.name,
//     });

//     final String id;
//     final String name;

//     factory Source.fromJson(Map<String, dynamic> json) => Source(
//         id: json["id"] == null ? null : json["id"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id == null ? null : id,
//         "name": name,
//     };
// }
