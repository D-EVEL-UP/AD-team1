import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dyne/screens/Home_Page_Controller/home.dart';
import 'package:flutter/rendering.dart';

class Cuisines extends StatefulWidget {
  @override
  _CuisinesState createState() => _CuisinesState();
}

class _CuisinesState extends State<Cuisines> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.indigo[50],
          appBar: AppBar(
            title: Text('Cuisines'),
            elevation: 15,
            backgroundColor: Colors.red[900],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Wrap(
              spacing: 25,
              children: <Widget>[
                CuisineChip('Chinese'),
                CuisineChip('Continental'),
                CuisineChip('Indian'),
                CuisineChip('Vegan'),
                CuisineChip('Mexican'),
                CuisineChip('Italian'),
              ],
            ),
          ),
          bottomSheet:GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DyneHomeScreen()));
            },
            child: Container(
              height: 60,
              color: Colors.red[700],
              child: Center(
                child: Text(
                  "Submit",
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

class CuisineChip extends StatefulWidget {
  final String cuisine;
  bool isSelected = false;
  CuisineChip(this.cuisine);
  @override
  _CuisineChipState createState() => _CuisineChipState();
}

class _CuisineChipState extends State<CuisineChip> {
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
      label: Text(widget.cuisine),
      labelStyle: TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      ),
    );
  }
}
