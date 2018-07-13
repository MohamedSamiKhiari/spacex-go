import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../classes/rocket_info.dart';

class RocketPage extends StatelessWidget {
  final RocketInfo rocket;

  RocketPage(this.rocket);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rocket details'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  _MissionCard(rocket),
                  _Dimensions(rocket),
                ],
              ),
            )
          ],
        ));
  }
}

class _MissionCard extends StatelessWidget {
  final RocketInfo rocket;

  _MissionCard(this.rocket);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Container(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //_launch.getHeroImage(128.0),
                  Container(width: 24.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        rocket.name,
                        style: TextStyle(
                            fontSize: 21.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        rocket.status,
                        style: TextStyle(fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        rocket.getFirstLaunched,
                        style: TextStyle(fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        rocket.stages.toString(),
                        style: TextStyle(fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        rocket.getSuccessRate,
                        style: TextStyle(fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        rocket.getLaunchCost,
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                height: 24.0,
              ),
              Text(
                rocket.details,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          )),
    );
  }
}

class _Dimensions extends StatelessWidget {
  final RocketInfo rocket;

  _Dimensions(this.rocket);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Container(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //_launch.getHeroImage(128.0),
                  Container(width: 24.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      rowItem('HEIGHT', description),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}

Widget rowItem(String name, String description, [bool isClickable = false]) {
  return Container(
    margin: EdgeInsets.only(left: 24.0, right: 24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(fontSize: 17.0),
        ),
        Text(
          description,
          style: TextStyle(
              fontSize: 17.0,
              color: Colors.white70,
              decoration:
                  isClickable ? TextDecoration.underline : TextDecoration.none),
        ),
      ],
    ),
  );
}

Widget rowIconItem(String name, bool icon) {
  return Container(
    margin: EdgeInsets.only(left: 24.0, right: 24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(fontSize: 17.0),
        ),
        rowIcon(icon)
      ],
    ),
  );
}

Widget rowIcon(bool state) {
  return Icon(
    state == null
        ? Icons.remove_circle
        : (state ? Icons.check_circle : Icons.cancel),
    color:
        state == null ? Colors.blueGrey : (state ? Colors.green : Colors.red),
  );
}