// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/file/post.dart';
import 'package:instagram/file/stories.dart';

class Home extends StatelessWidget {
  final List<String> _user = [
    'Sujal ko friend',
    'Buddhahang',
    'Ridhima',
    'Aatharav',
    'Xyz',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.messenger),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 120,
                child: ListView.builder(
                  itemCount: _user.length,
                  itemBuilder: (context, index) {
                    return Stories(text: _user[index]);
                  },
                  scrollDirection: Axis.horizontal,
                )),
            Expanded(
              child: ListView.builder(
                  itemCount: _user.length,
                  itemBuilder: (context, index) {
                    return Post(Name: _user[index]);
                  }),
            )
          ],
        ));
  }
}
