import 'package:flutter/material.dart';
import 'package:flutter_kboy/root.dart';

class Next1 extends StatelessWidget {
  Next1(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Alarm"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
          Icon(Icons.storage),
          Icon(Icons.cloud_upload),
        ],
      ),

      body: Container(
        height: double.infinity,
        color: Colors.amberAccent,
        child: Column(
          children: [
            Text(name),
            Center(
              child: RaisedButton(
                child: Text("次へ"),
                color: Colors.limeAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Next4()),
                  );
                },
                //ボタンの編集
                splashColor: Colors.black54,
                shape: StadiumBorder(), //角丸
              ),
            ),
            RaisedButton(
              child: Text("戻る"),
              color: Colors.limeAccent,
              onPressed: (){
                Navigator.pop(context);
                //推したら反応するコードを書く
              },
              splashColor: Colors.black54,
              shape: StadiumBorder(), //角丸
            ),
          ],
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}