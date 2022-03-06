import 'package:flutter/material.dart';
import 'package:uyga_vaziga_1/widgets/question.dart';
import 'package:uyga_vaziga_1/widgets/reusult.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:ThemeData.dark(),
      home:   MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  List<Map<String, dynamic>> questionsVsAnswers =[
    {'question':"1. What ____ your name ? ",
    "answers":[
      {'answer':"are",'check': false},
      {'answer':"is",'check': true},
      {'answer':"hello",'check': false},
      {'answer':"tom",'check': false},
    ]},
    {'question':"2.She never  ____ meat ",
    "answers":[
      {'answer':"is eating",'check': false},
      {'answer':"shall eat",'check': false},
      {'answer':"eats",'check': true},
      {'answer':"doesn't eat",'check': false},
    ]},
    {'question':"3. I ____ my mother now ",
    "answers":[
      {'answer':"helped",'check': false},
      {'answer':"is helped",'check': false},
      {'answer':"help",'check': false},
      {'answer':"am helping",'check': true},
    ]},
    {'question':"4. I ____ with her tomorrow ",
    "answers":[
      {'answer':"will play",'check': true},
      {'answer':"played",'check': false},
      {'answer':"are playing",'check': false},
      {'answer':"plays",'check': false},
    ]},
    {'question':"5. Look! Your father ! ",
    "answers":[
      {'answer':"will come",'check': false},
      {'answer':"comes",'check': false},
      {'answer':"came",'check': false},
      {'answer':"is coming",'check': true},
    ]},

  ];

  int number = 0;
  int reusults = 0;

   add(bool reusult){
    setState(() {
      number++;
      if (reusult==true){
        reusults++;
    }});


  }
  void restart(){
     setState(() {
       number = 0;
       reusults = 0;
     });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingiliz tili quiz'),
      ),
      body: Center(
          child:number < questionsVsAnswers.length ?
          Questions('${questionsVsAnswers[number]['question']}',questionsVsAnswers[number]['answers'],add)
              : reusult(reusults,questionsVsAnswers.length,restart)),
    );
  }
}




