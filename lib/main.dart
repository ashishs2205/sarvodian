import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:sarvodian/scoped-models/main_smodel.dart';

import 'package:sarvodian/homepage.dart';
import 'package:sarvodian/pages/auth.dart';
import 'package:sarvodian/widgets/questions_widgets/answerpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final MainModel model = MainModel();
    return ScopedModel<MainModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sarvodian',
        theme: ThemeData(
            primarySwatch: Colors.teal,
            primaryColor: Colors.teal,
            accentColor: Colors.white,
            fontFamily: 'Karla',
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.teal,
              textTheme: ButtonTextTheme.accent,
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              foregroundColor: Colors.teal,
              backgroundColor: Colors.white,
            ),
            iconTheme: IconThemeData(color: Colors.black)),
        routes: {
          '/': (BuildContext context) => AuthPage(),
          '/home': (BuildContext context) => MyHomePage(),
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split('/');

          if (pathElements[0] != '') {
            return null;
          }
          if (pathElements[1] == 'question') {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute<bool>(
                builder: (BuildContext context) => AnswerPage(index));
          }
          return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage(),
          );
        },
      ),
    );
  }
}
