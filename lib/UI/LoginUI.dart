import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:techlife/Mothed/hwork.dart';
import 'package:techlife/Mothed/techM.dart';
import 'package:techlife/Services/RemoteServices.dart';
import 'package:techlife/Services/sir/new.dart';
import 'package:techlife/UI/screen1.dart';
import 'package:http/http.dart' as http;

class LoginUI extends StatefulWidget {
  LoginUI({Key? key}) : super(key: key);

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  var usersNController = TextEditingController();
  var passwordController = TextEditingController();
  

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFD9CFAC),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      TextFormField(
                        controller: usersNController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: 'Enter a User Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Log In'),
                      ),
                      SizedBox(height: 50),
                      Text(''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      );

//------------------------------------------------------------------------------------------------------------------------------------
}
