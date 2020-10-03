import 'package:flutter/material.dart';


class TimeLinePage extends StatefulWidget {
  TimeLinePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Center(
        child: ListView(
        children: List.generate(10, (index) {
      return InkWell(
        onTap: () {},
        child: Column(
          children: <Widget>[
            ListTile(
              title: Row(
                children: <Widget>[
                  Text("Index ユーザー $index"),
                  SizedBox(
                    width: 70.0,
                  ),
                  Text(
                    "8時間前",
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  )
                ],
              ),
              leading: Image.asset(
                "iamges/icon$index.png",
                width: 30.0,
                height: 30.0,
              ),
              subtitle: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("こんにちはTwitterへ！！\nこちらはTwitterのクローンを作成しています"),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.comment,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Text(index.toString()),
                        SizedBox(
                          width: 30.0,
                        ),
                        Icon(
                          Icons.repeat,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Text(index.toString()),
                        SizedBox(
                          width: 30.0,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Text(index.toString()),
                        SizedBox(
                          width: 30.0,
                        ),
                        Icon(
                          Icons.share,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Text(index.toString()),
                        SizedBox(
                          width: 30.0,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(
              height: 5.0,
            ),
          ],
        ),
      );
    })),
    ),);
  }
}