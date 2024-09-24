import 'package:flutter/material.dart';

class MyColorsApi extends StatefulWidget {
  const MyColorsApi({super.key});

  @override
  State<MyColorsApi> createState() => _MyColorsApiState();
}

class _MyColorsApiState extends State<MyColorsApi> {


  void getColorsDetails()async{

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colors API",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Image.network(
                      height: 75,
                      width: 75,
                      "https://www.colourlovers.com/img/9EAB65/100/100/greygreen.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Title : "),
                          Text("DateCreated : "),
                          Text("Hex : "),
                          Text("Username : "),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
