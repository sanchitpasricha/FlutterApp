import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  @override
  _CheckListState createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hi! Tester!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor .',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Takes 5 mins only.',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: Color(0xFF708B02),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.white,
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .36,
                  right: 20.0,
                  left: 20.0),
              child: Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: CardList(
                  icon: Icons.check_circle_rounded,
                  colour: Color(0xFF008000),
                  mainText: 'Step1',
                  subHead: 'Completed',
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .5,
                  right: 20.0,
                  left: 20.0),
              child: Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: CardList(
                  icon: Icons.check_circle_rounded,
                  colour: Color(0xFF008000),
                  mainText: 'Step2',
                  subHead: 'Completed',
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .64,
                  right: 20.0,
                  left: 20.0),
              child: Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: CardList(
                  icon: Icons.add_circle_rounded,
                  colour: Color(0xFFEEE8AA),
                  mainText: 'Step3',
                  subHead: 'Pending',
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .8,
                  right: 20.0,
                  left: 20.0),
              child: FlatButton(
                child: Container(
                  child: Center(
                    child: Text(
                      'Back to Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFB8860B),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50.0,
                  width: 320.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  CardList({this.icon, this.colour, this.mainText, this.subHead});

  final IconData icon;
  final Color colour;
  final String mainText;
  final String subHead;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: colour,
              size: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    mainText,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(
                      subHead,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF777777),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      elevation: 4.0,
    );
  }
}
