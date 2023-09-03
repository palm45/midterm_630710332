import 'package:flutter/material.dart';

class Choice extends StatefulWidget{
  final String section;
  final String text;
  final bool choose;

  const Choice({
    super.key,
    required this.section,
    required this.text,
    required this.choose,
  });

  @override
  State<Choice> createState() => _Choice();
}

class _Choice extends State<Choice>{


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(13),
          color: widget.choose ? Color.fromRGBO(236, 247, 255, 1) : Colors.white,
          border: Border.all(
            color: Colors.black,
          )
      ),
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                  color: widget.choose ? Color.fromRGBO(249, 141, 140, 1) : Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  )
              ),
              height: 25,
              width: 25,
              child: Center(
                child: Text(
                  widget.section,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ),
            ),
          ),
          Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget.choose ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(101, 221, 64, 1),
                border: Border.all(
                  color: Colors.black
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.done,
                  size: 15,
                ),
              ),
            ) : null,
          ),
        ],
      ),
    );
  }

}