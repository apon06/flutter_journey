import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocalStoreInt extends StatefulWidget {
  const SharedPreferencesLocalStoreInt({super.key});

  @override
  State<SharedPreferencesLocalStoreInt> createState() =>
      SsharedPreferencesStateLocalStore();
}
class SsharedPreferencesStateLocalStore
    extends State<SharedPreferencesLocalStoreInt> {
    int count = 0;

  savaData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // Important
    int? saveValue = sharedPreferences.getInt('Int');
    setState(() {
      if (saveValue != null) { // if != null send count data in saveValue
        count = saveValue;
      } 
    });
  }
  add() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // Important
    setState(() {
      count++;
      sharedPreferences.setInt('Int', count); /// setInt Store data 'Int' key,count send data 'Int' ket
    });
  }

  @override
  void initState() {
    savaData(); // Important Other wise Data not save
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          add();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
    );
  }
}
