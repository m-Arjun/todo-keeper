import 'package:flutter/material.dart';

class newdata extends StatefulWidget {
  @override
  _newdataState createState() => _newdataState();
}

class _newdataState extends State<newdata> {
  static var prio = ['High', 'low'];
  TextEditingController _title = TextEditingController();
  TextEditingController _desc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add data'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: prio
                    .map((e) => DropdownMenuItem<String>(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    print('in prioriteis');
                  });
                },
                value: 'High',
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  controller: _title,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'TITLE',
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                  controller: _desc,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'DESC',
                  )),
            ),
            Padding(padding: EdgeInsets.only(top:10,bottom:10),
            child: Row(
              children: <Widget>[
                Expanded(child: RaisedButton(onPressed: (){},child: Text('Add'),)),
                SizedBox(width: 10,),
                Expanded(child: RaisedButton(onPressed: (){},child: Text('Delete'),))

              ],
            ),)
          ],
        ),
      ),
    );
  }
}
