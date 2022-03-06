import 'package:flutter/material.dart';


class reusult extends StatelessWidget {
  final int reusults;
   final int questionslenth;
  final Function() restart;
  reusult(this.reusults,this.questionslenth,this.restart);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Your reusults \n $questionslenth / $reusults",
          style: TextStyle(fontSize: 25,),
          textAlign: TextAlign.center,),
        ElevatedButton.icon(
          onPressed: restart,
          icon: Icon(Icons.restart_alt),
          label: Text('RESTART'),),
      ],
    );
  }
}

