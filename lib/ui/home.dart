import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "Whatever the mind of man can conceive and believe, it can achieve.",
    "Life isn't about getting and having it's about giving and being.",
    "Strive not to be a success, but rather to be of value.",
    "You miss 100% of the shots you don't take.",
    "The most difficult thing is the decision to act, the rest is merely tenacity"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)
                    ),
                    child: Center(child: Text(quotes[_index % quotes.length],
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.5
                        )))),
              ),
            ),
            Divider(thickness: 1.3,),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.greenAccent.shade700,
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Inspire Me!", style: TextStyle(
                      fontSize: 18.8,
                      color: Colors.white
                  ),)),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });


  }
}