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

class Controller extends GetxController {
  var data = 0.obs; //data yg akan selalu dipantau perubahannya

  increment() => data++;
  decrement() => data--;
}

class HomePage extends StatelessWidget {
  final Controller CounterController =
      Get.put(Controller()); //controller untuk state di getx

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Belajar GetX")),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 131, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${CounterController.data.value}", //tampilkan data dari controller
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    CounterController
                        .decrement(); //call fungsi decrement di controller
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 36, 116, 255),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    CounterController
                        .increment(); //call fungsi increment di controller
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 36, 116, 255),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
