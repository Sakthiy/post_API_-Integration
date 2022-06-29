import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:techlife/Mothed/hwork.dart';
import 'package:techlife/Mothed/techM.dart';
import 'package:http/http.dart' as http;

class Rs {
  var tokenval = "";
  Future<List<Fdata>?> getPost() async {
    var client = http.Client();
    var url = Uri.parse(
        'http://ec2-13-232-247-239.ap-south-1.compute.amazonaws.com:8083/api/parentAuth?device=1');
    var respons = await client.post(url, body: {
      "username": "7904452726", //usersNController.text.trim(),
      "password": "7904452726", //passwordController.text.trim(),
    });
    var uname = "7904452726".isNotEmpty; //usersNController.text.isNotEmpty;
    var upssword = "7904452726".isNotEmpty; //passwordController.text.isEmpty;
    if (uname && upssword) {
      if (respons.statusCode == 200) {
        var objJson = json.decode(respons.body);
        var resultToken = objJson["result"]["token"];
        tokenval = resultToken;
        print("Token Id " + tokenval);
        hitpoint();
      }
    }
  }

  hitpoint() {
    var url = Uri.parse(
        'http://ec2-13-232-247-239.ap-south-1.compute.amazonaws.com:8083/api/getAssignmentStud/5e0c6ebd57fa0448dc7655de?device=1');
    var token = tokenval;
    var client1 = http.Client();
    Map<String, String> head = {'authorization': 'Bearer $token'};
    client1.get(url, headers: head).then((response) {
      if (response.statusCode == 200) {
        var tagjson = response.body;
        return hworkFromJson(tagjson);
      }
    });
  }
}

//---------------------------------------------------------------------------------------------------------------
// String tokenvalue = "";
//   void hitloginapi() {
//     String url =
//         "http://ec2-13-232-247-239.ap-south-1.compute.amazonaws.com:8083/api/parentAuth?device=1";
//     http.post(Uri.parse(url), body: {
//       "username": "7904452726",
//       "password": "7904452726"
//     }).then((response) {
//       if (response.statusCode == 200) {
//         var tagjson = json.decode(response.body);
//         var result = tagjson["result"]["token"];
//         setState(() {
//           tokenvalue = result;
//         });
//         print(result);
//         hittoken();
//       }
//     });
//   }

//   void hittoken() {
//     String url =
//         "http://ec2-13-232-247-239.ap-south-1.compute.amazonaws.com:8083/api/getAssignmentStud/5e0c6ebd57fa0448dc7655de?device=1";
//     String token = tokenvalue;
//     Map<String, String> bead = {'authorization': 'Bearer $token'};
//     http.get(Uri.parse(url), headers: bead).then((response) {
//       if (response.statusCode == 200) {
//         var tagjson = json.decode(response.body);
//         print(tagjson);
//       }
//     });
//   }