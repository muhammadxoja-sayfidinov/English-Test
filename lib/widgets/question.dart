import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questions ;
  final List<Map<String , dynamic>> answers;
  final Function answerToTheQuestion;

  Questions(this.questions, this.answers, this.answerToTheQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(questions,style: TextStyle(fontSize: 20),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed:  () =>  answerToTheQuestion(answers[0]['check']),
            child: Center(
                child: Text('${answers[0]['answer']}',
                  style: TextStyle(color: Colors.white,fontSize: 18),)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:ElevatedButton (
            onPressed: () => answerToTheQuestion(answers[1]['check']),
            child: Center(
                child: Text('${answers[1]['answer']}',
                  style: TextStyle(color: Colors.white,fontSize: 18),)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed:  () =>  answerToTheQuestion(answers[2]['check']),
            child: Center(
                child: Text('${answers[2]['answer']}',
                  style: TextStyle(color: Colors.white,fontSize: 18),)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () =>  answerToTheQuestion(answers[3]['check']),
            child: Center(
                child: Text('${answers[3]['answer']}',
                  style: TextStyle(color: Colors.white,fontSize: 18),)),
          ),
        ),
      ],
    );
  }
}
