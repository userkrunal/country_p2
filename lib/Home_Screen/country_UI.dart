import 'package:flutter/material.dart';

class Country_UI extends StatefulWidget {
  const Country_UI({Key? key}) : super(key: key);

  @override
  State<Country_UI> createState() => _Country_UIState();
}

class _Country_UIState extends State<Country_UI> {

  int i =0;
  @override
  Widget build(BuildContext context) {
    List temp = ModalRoute.of(context)!.settings.arguments as List;
    List country = temp[0];
    List flag = temp[1];
    List president = temp[2];
    List col = temp[3];
    List no=temp[4];

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.brown,

        title: Text(
          "${flag[i]} ${country[i]} ${flag[i]}",
          style: TextStyle(fontSize: 25, letterSpacing: 5),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${temp[0][0]}",
              style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 15,
                  color: Colors.amber),
            ),
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              child: Image.network("${president[i]}",height: 300,width: 300,),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("${col[i]}"),
            )

          ],
        ),
      ),
    );
  }
}
