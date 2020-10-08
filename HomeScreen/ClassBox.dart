import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ClassDetail.dart';

Color _color = Color(0xff00854c);

class ClassBox extends StatelessWidget {
  final String name;
  final String grade;
  final double height;
  final double width;

  const ClassBox({
    Key key,
    this.name,
    this.grade,
    this.height = 400,
    this.width = 350,
  })  : assert(name != null),
        assert(grade != null),
        super(key: key);

  void _navigateToApply(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ClassDetail(name: name, grade: grade)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Material(
        elevation: 5,
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                color: _color,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '$name - Grade $grade',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.info,
                          color: _color,
                          size: 30,
                        ),
                      ),
                      onPressed: () => _navigateToApply(context),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => _navigateToApply(context),
                child: Container(
                  height: 342,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
