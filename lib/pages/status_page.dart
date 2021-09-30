import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.black26.withOpacity(0.07),
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/839011/pexels-photo-839011.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    ),
                    title: Text("+51 987 654 321",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16.0)),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received,
                            size: 17.0, color: Theme.of(context).accentColor),
                        Text("4 de agosto 15:43")
                      ],
                    ),
                    trailing:
                    Icon(Icons.call, color: Theme.of(context).accentColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 40),
                    child: Divider(height: 10, thickness: 0.5),
                  )
                ],
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.black26.withOpacity(0.07),
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1181690/pexels-photo-1181690.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    ),
                    title: Text("+51 987 654 321",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16.0)),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received,
                            size: 17.0, color: Theme.of(context).accentColor),
                        Text("4 de agosto 15:43")
                      ],
                    ),
                    trailing:
                    Icon(Icons.call, color: Theme.of(context).accentColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 40),
                    child: Divider(height: 10, thickness: 0.5),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
