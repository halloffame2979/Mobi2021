import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color _color = Color(0xff00854c);

class ClassDetail extends StatelessWidget{
  final String name;
  final String grade;

  const ClassDetail( {Key key,this.name, this.grade}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text('Apply class'),
      ),

      body: Container(),
    );
  }

}