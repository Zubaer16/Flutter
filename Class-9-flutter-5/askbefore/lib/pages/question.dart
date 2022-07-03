// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> mylist = [
  ' Who do you remember from school?',
  'Did you have a best friend, and if so, how did that relationship play out over the course of your life? ',
  ' What are some achievements you are most proud of? Find more questions on '
];

Color _colors = Colors.white;

class Question extends StatefulWidget {
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < 321
        ? GestureDetector(
            onTap: () {
              setState(() {
                _colors = Color(
                  0xFF4F7C87,
                );
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border.all(color: _colors, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              width: 400.h,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 22, left: 5, right: 5, bottom: 22),
                child: Center(
                  child: Text(
                    'What are your favourite family vacation memories?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(
                          0xFF4F7C87,
                        ),
                        height: 1.5,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        : screenWidth < 376
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _colors = Color(
                      0xFF4F7C87,
                    );
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(color: _colors, width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                  width: 470.h,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 22, left: 1, right: 1, bottom: 22),
                    child: Center(
                      child: Text(
                        'What are your favourite family vacation memories?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(
                              0xFF4F7C87,
                            ),
                            height: 1.5,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            : screenWidth < 426
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _colors = Color(
                          0xFF4F7C87,
                        );
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(color: _colors, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      width: 540.h,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 22, left: 1, right: 1, bottom: 22),
                        child: Center(
                          child: Text(
                            'What are your favourite family vacation memories?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(
                                  0xFF4F7C87,
                                ),
                                height: 1.5,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        _colors = Color(
                          0xFF4F7C87,
                        );
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(color: _colors, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      width: 800.h,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 27, left: 5, right: 5, bottom: 27),
                        child: Center(
                          child: Text(
                            'What are your favourite family vacation memories?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(
                                  0xFF4F7C87,
                                ),
                                height: 1.5,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  );
  }
}
