import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mesaj pencere",
      home: anasayfa(),
    );
  }
}
class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  List msj=[];
  TextEditingController t1=TextEditingController();
  gonder(){
    setState(() {

      msj.insert(0,t1.text);
          t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("sohbet"),),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(child:
            ListView.builder(
              reverse: true,

              itemCount: msj.length,
                itemBuilder: (context,index)=> ListTile(title:
                Row(
                  children: [
                    Icon(Icons.message),
                    Text(msj[index],),
                  ],
                ),subtitle: Text("okundu"),),

            ),
            ),

            TextField(
              controller: t1,
            ),
            RaisedButton(onPressed: gonder,child: Text("gönder"),),


          ],
        ),
      ),
    );
  }
}
