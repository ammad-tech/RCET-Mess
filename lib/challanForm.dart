import 'package:flutter/material.dart';

class ChallanForm extends StatefulWidget {
@override
_ChallanFormState createState() => _ChallanFormState();
}

class _ChallanFormState extends State<ChallanForm> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Challan Form"),

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(
                      Icons.account_balance,
                      color: Colors.blue,
                    ),
                    title: Text(''
                        'Account Details',
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

                            'Current Bill',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                          child: Text(
                            'Meal Bill',
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
                          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 20.0),
                          child: Text(
                            '2000',
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 20.0),
                          child: Text(
                            '1300',
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
                            'Mess Service',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                          child: Text(
                            'Room Service',
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
                          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 20.0),
                          child: Text(
                            '500',
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 20.0),
                          child: Text(
                            '200',
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


            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
              child: SizedBox(
                height: 40.0,
                width: 300.0,
                child: new RaisedButton.icon(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.blue,
                  icon: Icon(
                   Icons.file_download,
                   color: Colors.white,
                  ),

                  label: new Text(
                      'Download Challan Form',
                      style: new TextStyle(fontSize: 16.0, color: Colors.white)),
                  onPressed: () {









                  },
                ),
              ),
            ),



          ],
        ),
      ),


    );
  }
}

