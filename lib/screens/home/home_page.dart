// ignore_for_file: avoid_unnecessary_containers

import 'package:cpsu_midterm_1_2023_starter/widgets/category_question.dart';
import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710332';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String num = '0';
  bool next=false;
  bool previous=false;

  static const List<String> questionList = [
    'ไก่กับไข่อะไรสีเขียว',
    'ระหว่างทะเลกับบาบีคิว อะไรนั่งยานอวกาศ',
    'ปลาอะไรใหญ่ที่สุด',
    'อะไรเอ่ยอยู่ในเสื้อมองไม่เห็น',
  ];

  var numq = 0;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryQuestion(
            numquestion: 'Question '+ this.num + ' of 4' ,
            question: questionList[numq],
            text1: 'Amazon River',
            text2: 'Nile River',
            text3: 'Mississippi',
            text4: 'Yangtze River',
          )
        ],
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                setState(() {
                  previous = true;
                  next = false;
                });
              },
              borderRadius: BorderRadius.circular(40),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(249, 141, 140, 1),
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )
                ),
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.428,
                child: Center(
                  child: Text(
                    '<' ,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                setState(() {
                  next = true;
                  previous = false;
                });
              },
              borderRadius: BorderRadius.circular(40),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(72, 176, 170, 1),
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )
                ),
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.428,
                child: Center(
                  child: Text(
                    '>' ,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
