import 'package:flutter/material.dart';

import '../widgets/UI elements/questiontitle.dart';
import '../widgets/UI elements/colordividerline.dart';

class AnswerPage extends StatelessWidget {
  final String _question;

  AnswerPage(this._question);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Answer')),
        body: Column(children: <Widget>[
          QuestionTitle(_question),
          ColorDividerLine(),
          Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Answer',
                ),
                onChanged: (String value) {
                  //passValue = value;
                },
              )),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Icon(
              Icons.question_answer,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          )
        ]));
  }
}
