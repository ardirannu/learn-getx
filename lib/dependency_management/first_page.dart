import 'package:belajar_getx/controllers/first_page_controller.dart';
import 'package:belajar_getx/dependency_management/second_page.dart';
import 'package:belajar_getx/dependency_management/third_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //dengan menggunakan dependency management GetX, kita tidak perlu mengirim data ke page 2 via contsructor, 
  //cukup menggunakan controller dan dipanggil menggunakan Get.put
  //diroute menggunakan binding builder untuk put controller, jadi di page yg dituju tinggal find controller

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/', //set route untuk beranda
      getPages: [
        //set smua route name yg akan digunakan
        //route dengan binding builder untuk put controller
        GetPage(name: '/', page: () => FirstPage(), binding: BindingsBuilder.put(() => firstPageController())),
        GetPage(name: '/second-page', page: () => SecondPage()),
        GetPage(name: '/third-page', page: () => ThirdPage()),
      ],
    );
  }
}

class FirstPage extends StatelessWidget {
  final firstPageController firstPageC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Dependency Management GetX")),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 131, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${firstPageC.data['name']} - ${firstPageC.data['age']} Tahun",
              style: TextStyle(
                fontSize: 21,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                //Getx route management
                Get.toNamed("/second-page"); //mengunakan get route toNamed
              }, 
              child: Text("Pindah ke page 2"),
            ),
          ],
        )
      ),
    );
  }
}