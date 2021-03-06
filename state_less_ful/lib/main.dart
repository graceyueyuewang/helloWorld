import 'package:flutter/material.dart';
import 'package:state_less_ful/image_show.dart';
void main() => runApp(MyApp());
 class MyApp extends StatefulWidget {
   MyApp({Key key}) : super(key: key);
   
   _MyAppState createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   String imageFileName = 'p1.jpg';
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ballet World'),
        ),
        body: Center(
          child: Column(
            children:<Widget>[
              //图片显示lessw
              ImageShow(
                imgName: imageFileName,
                ),
              //按钮
              RaisedButton(
                onPressed: () {
                if (imageFileName == 'p1.jpg') {
                  imageFileName = 'p2.jpg';
                } else {
                  imageFileName = 'p1.jpg';
                }
                setState(() {
                  imageFileName = imageFileName;
                  print(imageFileName);
                });
              },
                child: Text('切换图片'),
              ),
            ],
          ),
        ),
      ),
    );
   }
 }
