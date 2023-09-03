
import 'package:cpsu_midterm_1_2023_starter/widgets/Choice.dart';
import 'package:flutter/material.dart';

class CategoryQuestion extends StatefulWidget{
  final String numquestion;
  final String question;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const CategoryQuestion ({
    super.key,
    required this.numquestion,
    required this.question,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  State<CategoryQuestion> createState() => _CategoryQuestion();
}

class _CategoryQuestion extends State<CategoryQuestion>{
  bool select1=false;
  bool select2=false;
  bool select3=false;
  bool select4=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 2
        )
      ),
      height: MediaQuery.of(context).size.height*0.6,
      width: MediaQuery.of(context).size.width*0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
            widget.numquestion,
            style: TextStyle(
              fontSize: 15
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(72, 176, 170, 1),
                  border: Border.all(
                    color: Colors.black,
                    width: 2
                  )
              ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.8,
              child: Center(
                child: Text(
                  widget.question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
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
                  select1 = !select1;
                  select2 = false;
                  select3 = false;
                  select4 = false;
                });
              },
              child: Choice(
                section: 'A',
                text: widget.text1,
                choose: select1,
              ),
            )

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  setState(() {
                    select1 = false;
                    select2 = !select2;
                    select3 = false;
                    select4 = false;
                  });
                },
                child: Choice(
                  section: 'B',
                  text: widget.text2,
                  choose: select2,
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  setState(() {
                    select1 = false;
                    select2 = false;
                    select3 = !select3;
                    select4 = false;
                  });
                },
                child: Choice(
                  section: 'C',
                  text: widget.text3,
                  choose: select3,
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  setState(() {
                    select1 = false;
                    select2 = false;
                    select3 = false;
                    select4 = !select4;
                  });
                },
                child: Choice(
                  section: 'D',
                  text: widget.text4,
                  choose: select4,
                ),
              )
          ),
        ]
      ),

    );
  }

}