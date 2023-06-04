// ignore_for_file: prefer_const_constructors

import 'package:flash_chat/models/user_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  //final UserModel? userModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.shade400,
            title: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg'),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Text(
                      'userModel!.name!',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Online last seen, 2:02 pm',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            color: Colors.greenAccent),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'userModel!.email!',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Salam kandaisyn?',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
