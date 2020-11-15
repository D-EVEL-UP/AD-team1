import 'package:flutter/material.dart';
import 'dart:math';
import 'cuisines.dart';
import 'package:flutter/rendering.dart';

class Interests extends StatefulWidget {
  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          title: Text('Interests'),
          elevation: 15,
          backgroundColor: Colors.red[900],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Wrap(
            spacing: 25,
            children: <Widget>[
              InterestChip('Netflix'),
              InterestChip('Dance'),
              InterestChip('Music'),
              InterestChip('Driving'),
              InterestChip('Cycling'),
              InterestChip('Coding'),
              InterestChip('Coffee'),
              InterestChip('Blogging'),
              InterestChip('Drawing'),
              InterestChip('Cooking'),
              InterestChip('Gardening'),
              InterestChip('Exercising'),
              InterestChip('Acrobatics'),
              InterestChip('Hiking'),
              InterestChip('Fishing'),
              InterestChip('Football'),
              InterestChip('Archery'),

            ],
          ),
        ),
          bottomSheet:GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cuisines()));
            },
            child: Container(
              height: 60,
              color: Colors.red[700],
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}

class InterestChip extends StatefulWidget {
  final String interest;
  bool isSelected = false;
  InterestChip(this.interest);
  @override
  _InterestChipState createState() => _InterestChipState();
}

class _InterestChipState extends State<InterestChip> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      elevation: 20,
      onSelected: (bool selected) {
        setState(() {
          widget.isSelected = (!widget.isSelected);
          print(' tapped ');
        });
      },
      selected: widget.isSelected,
      shadowColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      backgroundColor: Colors.white,
      selectedColor: Colors.greenAccent,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      label: Text(widget.interest),
      labelStyle: TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      ),
    );
  }
}
