// To parse this JSON data, do
//
//     final hwork = hworkFromJson(jsonString);

import 'dart:convert';

Hwork hworkFromJson(String str) => Hwork.fromJson(json.decode(str));

String hworkToJson(Hwork data) => json.encode(data.toJson());

class Hwork {
    Hwork({
        required this.result,
        required this.success,
    });

    Result result;
    bool success;

    factory Hwork.fromJson(Map<String, dynamic> json) => Hwork(
        result: Result.fromJson(json["result"]),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "result": result.toJson(),
        "success": success,
    };
}

class Result {
    Result({
        required this.homework,
        required this.totalPages,
        required this.currentPage,
        required this.totalItems,
    });

    List<Homework> homework;
    int totalPages;
    int currentPage;
    int totalItems;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        homework: List<Homework>.from(json["homework"].map((x) => Homework.fromJson(x))),
        totalPages: json["totalPages"],
        currentPage: json["currentPage"],
        totalItems: json["totalItems"],
    );

    Map<String, dynamic> toJson() => {
        "homework": List<dynamic>.from(homework.map((x) => x.toJson())),
        "totalPages": totalPages,
        "currentPage": currentPage,
        "totalItems": totalItems,
    };
}

class Homework {
    Homework({
       required this.id,
       required this.topics,
       required this.finisherList,
       required this.attachFile,
       required this.ansKey,
       required this.entryDate,
       required this.subject,
       required this.subjectName,
       required this.chapterId,
       required this.description,
       required this.homeworkId,
       required this.subjectname,
    });

    String id;
    List<String> topics;
    List<dynamic> finisherList;
    List<String> attachFile;
    List<dynamic> ansKey;
    DateTime entryDate;
    String subject;
    String subjectName;
    String chapterId;
    String description;
    String homeworkId;
    List<String> subjectname;

    factory Homework.fromJson(Map<String, dynamic> json) => Homework(
        id: json["_id"],
        topics: List<String>.from(json["topics"].map((x) => x)),
        finisherList: List<dynamic>.from(json["finisherList"].map((x) => x)),
        attachFile: List<String>.from(json["attachFile"].map((x) => x)),
        ansKey: List<dynamic>.from(json["ansKey"].map((x) => x)),
        entryDate: DateTime.parse(json["entry_date"]),
        subject: json["subject"],
        subjectName: json["subject_name"],
        chapterId: json["chapter_id"],
        description: json["description"],
        homeworkId: json["id"],
        subjectname: List<String>.from(json["subjectname"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "finisherList": List<dynamic>.from(finisherList.map((x) => x)),
        "attachFile": List<dynamic>.from(attachFile.map((x) => x)),
        "ansKey": List<dynamic>.from(ansKey.map((x) => x)),
        "entry_date": entryDate.toIso8601String(),
        "subject": subject,
        "subject_name": subjectName,
        "chapter_id": chapterId,
        "description": description,
        "id": homeworkId,
        "subjectname": List<dynamic>.from(subjectname.map((x) => x)),
    };
}
