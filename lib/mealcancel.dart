import 'package:flutter/material.dart';
import 'dart:async';

class MealCancel extends StatefulWidget {
  @override
  _MealCancelState createState() => _MealCancelState();
}
enum SingingCharacter { lunch, dinner }

class _MealCancelState extends State<MealCancel> {
  DateTime _singleDate = null;
  DateTime _lasteDate = null;
  DateTime _firsreDate = null;

  SingingCharacter _lunch = null;
  SingingCharacter _dinner = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Meal Cancellation'),
      ),

      body: new Container(
        padding: new EdgeInsets.all(0.0),
        child: new Center(
          child: new Column(
            children: <Widget>[

              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                      ),
                      title: Text(''
                          'Days',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                      child: Divider(
                        color: Colors.grey[600],
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                            child: Text(

                              'Single Day Cancellation',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'Selected Date:',
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
                            child: RaisedButton.icon(
                              icon: Icon(
                                Icons.calendar_today
                              ),
                              label: new Text('$_singleDate'),
                              onPressed: () async{
                                DateTime picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.now().add(Duration(days: 10)),


                                );

                                if (picked != null){
                                  setState(() {
                                    _singleDate = picked;
                                  });
                                  print(picked.toString());
                                }

                              },
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50.0,),

                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                            child: Text(

                              'Multiple Day Cancellation',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'Start Date:',
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
                            child: RaisedButton.icon(
                              icon: Icon(
                                  Icons.calendar_today
                              ),
                              label: new Text('$_firsreDate'),
                              onPressed: () async{
                                DateTime picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.now().add(Duration(days: 10)),


                                );

                                if (picked != null){
                                  setState(() {
                                    _firsreDate = picked;
                                  });
                                  print(picked.toString());
                                }

                              },
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'End Date:',
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
                            child: RaisedButton.icon(
                              icon: Icon(
                                  Icons.calendar_today
                              ),
                              label: new Text('$_lasteDate'),
                              onPressed: () async{
                                DateTime picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.now().add(Duration(days: 10)),


                                );

                                if (picked != null){
                                  setState(() {
                                    _lasteDate = picked;
                                  });
                                  print(picked.toString());
                                }

                              },
                            ),
                          ),
                        ),
                      ],
                    ),



                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(
                  color: Colors.grey[600],
                ),
              ),

              Container(
                child: Center(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(
                            Icons.restaurant_menu,
                            color: Colors.blue,
                          ),
                          title: Text(
                            'Meal',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(
                            color: Colors.grey[600],
                          ),
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: ListTile(
                                title: const Text('Lunch'),
                                leading: Radio(
                                  value: SingingCharacter.lunch,
                                  groupValue: _lunch,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _lunch = value;
                                    });
                                  },
                                ),
                              ),
                            ),


                            Expanded(
                              flex: 1,
                              child: ListTile(
                                title: const Text('Dinner'),
                                leading: Radio(
                                  value: SingingCharacter.dinner,
                                  groupValue: _dinner,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _dinner = value;
                                    });
                                  },
                                ),
                              ),
                            ),


                          ],
                        ),




                      ],
                    ),
                  ),


                ),




              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                child: SizedBox(
                  height: 40.0,
                  width: 300.0,
                  child: new RaisedButton(
                    elevation: 5.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    child: new Text(
                        'Cancel Meal',
                        style: new TextStyle(fontSize: 20.0, color: Colors.white)),
                    onPressed: () {
                      if (_singleDate == null && _firsreDate == null && _lasteDate == null){
                        showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(
                                  title: Text("Error"),
                                  content: Text(
                                      "Date is not Selected"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("Okay"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),

                                  ],
                                )
                        );
                      }
                      else if(_dinner == null && _lunch == null){
                        showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(
                                  title: Text("Error"),
                                  content: Text(
                                      "Meal is not Selected"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("Okay"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),

                                  ],
                                )
                        );
                      }
                      else {
                        showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(
                                  title: Text("Meal Cancel"),
                                  content: Text(
                                      "Press CONFIRM to Cancel the Meal"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("Cancel"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),

                                    FlatButton(
                                      child: Text("Confirm"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                )
                        );
                      }
                    },
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
