// To parse this JSON data, do
//
//     final watchList = watchListFromJson(jsonString);

import 'dart:convert';

List<WatchList> watchListFromJson(String str) => List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String watchListToJson(List<WatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
    WatchList({
        required this.model,
        required this.pk,
        required this.fields,
    });

    String model;
    int pk;
    Fields fields;

    factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    bool watched;
    String title;
    int rating;
    DateTime releaseDate;
    String review;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: json["watched"],
        title: json["title"],
        rating: json["rating"],
        releaseDate: DateTime.parse(json["release_date"]),
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "review": review,
    };
}
