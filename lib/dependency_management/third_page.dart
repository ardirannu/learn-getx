import 'package:belajar_getx/controllers/first_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  //mencari dependency firstPageController yg sudah di instansiasi di page 1
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
              //mengambil data dari controller
              "Page 3 - ${firstPageC.data['name']} - ${firstPageC.data['age']} Tahun",
              style: TextStyle(
                fontSize: 21,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                //Getx route management
                Get.back(); //kembali ke layer sebelumnya
              }, 
              child: Text("Kembali"),
            ),
            ElevatedButton(
              onPressed: () {
                //Getx route management
                Get.offAllNamed("/"); //kembali ke home dan menghapus semua layer sebelumnya (offAll)
              }, 
              child: Text("To Home"),
            ),
          ],
        )
      ),
    );
  }
}