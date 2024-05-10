import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpsInternetData extends StatefulWidget {
  const HttpsInternetData({super.key});

  @override
  State<HttpsInternetData> createState() => HttpsInternetDataState();
}

class HttpsInternetDataState extends State<HttpsInternetData> {
  dynamic data;
  Future getData() async {
    var res =
        await http.get(Uri.parse('https://aponali.github.io/api/allapon.json'));
    setState(() {
      var decode = json.decode(res.body);
      data = decode;
      print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(data[index]["allappname"]);
        },
      ),
    );
  }
}
