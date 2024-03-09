import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Dialog GetX")),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 131, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Title",
              content: Text("Deskripsi dialog"),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Send")
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      child: Text("Cancel"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }, 
          child: Text(("Open Dialog"))
        ),
      ),
    );
  }
}