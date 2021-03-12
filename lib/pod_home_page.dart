import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PodHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "min",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("1",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                      Text("Phrase",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      RaisedButton(
                        //todo アイコン画像の表示
                        shape: const CircleBorder(
                          side: BorderSide(
                            color: Colors.black,
                            width: 0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        onPressed: () {
                          //todo マイページに飛ばす
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff676B76).withOpacity(0.4),
                      blurRadius: 40,
                      offset: Offset(0, 20),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff656872),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              //todo textfieldに書き換え
                              //todo ↓ヒントテキストに変更
                              "他の人を聴いてみる...",
                              style: TextStyle(
                                color: Color(0xffdddddd),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: FloatingActionButton(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onPressed: () {
                                  //todo 検索できるようにする
                                },
                              ),
                            )
                          ]),
                    ),
                    Divider(
                      height: 40,
                      indent: 0,
                      endIndent: 0,
                      color: Color(0xff656872),
                      thickness: 0.8,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RaisedButton(
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              //todo ホームページにとばす
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              //todo 音声を撮る画面に遷移,押されている状態色つけとく
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.chat_bubble_sharp,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              //todo 通知ページに遷移と通知の数を表示
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Image.network(
                    "https://pbs.twimg.com/profile_images/1346474698368958468/lJn66QeH_400x400.jpg",
                    width: 70,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text("ユーザーID"),
                      Text("投稿内容"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
