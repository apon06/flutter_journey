import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HttpsInternetData extends StatefulWidget {
  const HttpsInternetData({super.key});

  @override
  State<HttpsInternetData> createState() => HttpsInternetDataState();
}

class HttpsInternetDataState extends State<HttpsInternetData> {
  List<dynamic>? data;

  Future<void> saveData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String>? saveValue = sharedPreferences.getStringList('Int');
    if (saveValue != null) {
      setState(() {
        data = saveValue.map((e) => json.decode(e)).toList();
      });
    }
  }

  Future<void> getData() async {
    var res = await http.get(Uri.parse('https://aponali.github.io/api/allapon.json'));
    if (res.statusCode == 200) {
      var decode = json.decode(res.body) as List;
      setState(() {
        data = decode;
      });
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.setStringList('Int', decode.map((e) => json.encode(e)).toList());
    }
  }

  @override
  void initState() {
    super.initState();
    saveData();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data == null ? 0 : data!.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 100,
            width: 70,
            child: CachedNetworkImage(
              imageUrl: data![index]["allappimage"],
            ),
          );
        },
      ),
    );
  }
}
