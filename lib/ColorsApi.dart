import 'dart:convert';

import 'package:colors_api/Models/ColorsModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyColorsApi extends StatefulWidget {
  const MyColorsApi({super.key});

  @override
  State<MyColorsApi> createState() => _MyColorsApiState();
}

class _MyColorsApiState extends State<MyColorsApi> {
  List<ColorsModel>? ofColors;
  void getColorsDetails() async {
    try {
      var colorsApi = await http.get(
          Uri.parse("https://www.colourlovers.com/api/colors/new?format=json"));

      if (colorsApi.statusCode == 200) {
        ofColors = ColorsModel.ofColors(jsonDecode(colorsApi.body));
        print(ofColors);
        setState(() {});
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    getColorsDetails();
    super.initState();
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
          ofColors == null
              ? Center(child: CircularProgressIndicator.adaptive())
              : Expanded(
                  child: ListView.builder(
                      itemCount: ofColors!.length,
                      itemBuilder: (context, index) {
                        return Padding(
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
                                    "${ofColors![index].imageUrl}"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Title : ${ofColors![index].title ?? 'N/A'}",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "DateCreated : ${ofColors![index].dateCreated ?? 'N/A'}"),
                                        Text(
                                          "Hex : #${ofColors![index].hex}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "Username : ${ofColors![index].userName}"),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
        ],
      ),
    );
  }
}
