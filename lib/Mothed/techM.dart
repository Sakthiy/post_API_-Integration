// To parse required this JSON data, do
//
//     final fdata = fdataFromJson(jsonString);

import 'dart:convert';

Fdata fdataFromJson(String str) => Fdata.fromJson(json.decode(str));

String fdataToJson(Fdata data) => json.encode(data.toJson());

class Fdata {
  Fdata({
    required this.result,
    required this.success,
  });

  Result result;
  bool success;

  factory Fdata.fromJson(Map<String, dynamic> json) => Fdata(
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
    required this.refreshToken,
    required this.token,
    required this.student,
    required this.user,
    required this.userDetails,
  });

  String refreshToken;
  String token;
  List<Student> student;
  String user;
  UserDetails userDetails;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        refreshToken: json["refreshToken"],
        token: json["token"],
        student:
            List<Student>.from(json["student"].map((x) => Student.fromJson(x))),
        user: json["user"],
        userDetails: UserDetails.fromJson(json["userDetails"]),
      );

  Map<String, dynamic> toJson() => {
        "refreshToken": refreshToken,
        "token": token,
        "student": List<dynamic>.from(student.map((x) => x.toJson())),
        "user": user,
        "userDetails": userDetails.toJson(),
      };
}

class Student {
  Student({
    required this.id,
    required this.studentId,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    required this.guardianRelationship,
    required this.rollNumber,
    required this.mobNo,
    required this.admissionNumber,
    required this.admissionDate,
    required this.bloodGroup,
    required this.motherTongue,
    required this.gradeId,
    required this.sectionId,
    required this.guardianId,
    required this.proGradeId,
    required this.proSectionId,
    required this.image,
    required this.language,
    required this.docFile,
    required this.organizationId,
    required this.status,
    required this.sectionName,
    required this.grade,
  });

  String id;
  String studentId;
  String firstName;
  String lastName;
  String gender;
  DateTime dateOfBirth;
  String guardianRelationship;
  String rollNumber;
  String mobNo;
  String admissionNumber;
  DateTime admissionDate;
  String bloodGroup;
  String motherTongue;
  String gradeId;
  String sectionId;
  String guardianId;
  String proGradeId;
  String proSectionId;
  String image;
  List<String> language;
  List<dynamic> docFile;
  int organizationId;
  bool status;
  String sectionName;
  String grade;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["_id"],
        studentId: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        gender: json["gender"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        guardianRelationship: json["guardian_relationship"],
        rollNumber: json["roll_number"],
        mobNo: json["mob_no"],
        admissionNumber: json["admission_number"],
        admissionDate: DateTime.parse(json["admission_date"]),
        bloodGroup: json["blood_group"],
        motherTongue: json["mother_tongue"],
        gradeId: json["grade_id"],
        sectionId: json["section_id"],
        guardianId: json["guardian_id"],
        proGradeId: json["pro_grade_id"],
        proSectionId: json["pro_section_id"],
        image: json["image"],
        language: List<String>.from(json["language"].map((x) => x)),
        docFile: List<dynamic>.from(json["docFile"].map((x) => x)),
        organizationId: json["organization_id"],
        status: json["status"],
        sectionName: json["sectionName"],
        grade: json["grade"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "id": studentId,
        "first_name": firstName,
        "last_name": lastName,
        "gender": gender,
        "date_of_birth": dateOfBirth.toIso8601String(),
        "guardian_relationship": guardianRelationship,
        "roll_number": rollNumber,
        "mob_no": mobNo,
        "admission_number": admissionNumber,
        "admission_date": admissionDate.toIso8601String(),
        "blood_group": bloodGroup,
        "mother_tongue": motherTongue,
        "grade_id": gradeId,
        "section_id": sectionId,
        "guardian_id": guardianId,
        "pro_grade_id": proGradeId,
        "pro_section_id": proSectionId,
        "image": image,
        "language": List<dynamic>.from(language.map((x) => x)),
        "docFile": List<dynamic>.from(docFile.map((x) => x)),
        "organization_id": organizationId,
        "status": status,
        "sectionName": sectionName,
        "grade": grade,
      };
}

class UserDetails {
  UserDetails({
    required this.id,
    required this.username,
    required this.passUnhash,
    required this.profileId,
    required this.profileType,
    required this.roleId,
    required this.isActive,
    required this.mobile,
    required this.userDetailsId,
    required this.v,
    required this.organizationId,
    required this.apiToken,
  });

  String id;
  String username;
  String passUnhash;
  String profileId;
  String profileType;
  String roleId;
  int isActive;
  String mobile;
  String userDetailsId;
  int v;
  int organizationId;
  dynamic apiToken;

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["_id"],
        username: json["username"],
        passUnhash: json["pass_unhash"],
        profileId: json["profile_id"],
        profileType: json["profile_type"],
        roleId: json["role_id"],
        isActive: json["is_active"],
        mobile: json["mobile"],
        userDetailsId: json["id"],
        v: json["__v"],
        organizationId: json["organization_id"],
        apiToken: json["api_token"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "pass_unhash": passUnhash,
        "profile_id": profileId,
        "profile_type": profileType,
        "role_id": roleId,
        "is_active": isActive,
        "mobile": mobile,
        "id": userDetailsId,
        "__v": v,
        "organization_id": organizationId,
        "api_token": apiToken,
      };
}
