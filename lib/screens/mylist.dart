import 'package:flutter/material.dart';
import 'package:todo_keeper/screens/newdata.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
        centerTitle: true,
      ),
      body: _listview(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            navigatetodata('Add Data');
          });
        },
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView _listview() {
    return ListView.builder(
      itemCount: _count,
      itemBuilder: (context, int position) {
        return Card(
          color: Colors.white,
          elevation: 6.0,
          child: ListTile(
            onTap: () {
              navigatetodata('Edit data');
            },
            leading: CircleAvatar(),
            title: Text('Titile'),
            subtitle: Text("subtitle"),
            trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          ),
        );
      },
    );
  }

  void navigatetodata(String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Newdata(title);
    }));
  }
}
