import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIPE DATA RX"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataInt}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.decrementInt(),
                    child: Text("-"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.incrementInt(),
                    child: Text("+"),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataString}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.updateDataString(),
                    child: Text("update"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.resetDataString(),
                    child: Text("reset"),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataDouble}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.decrementDouble(),
                    child: Text("-"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.incrementDouble(),
                    child: Text("+"),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataBool}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => homeC.gantiDataBool(),
                child: Text("Ganti Bool"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataList}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.ubahDataList(),
                    child: Text("Ubah 99"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.tambahDataList(),
                    child: Text("Tambah"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataSet}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.ubahDataSet(),
                    child: Text("Ubah 99"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.tambahDataSet(),
                    child: Text("Tambah"),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => ListTile(
                    leading: CircleAvatar(
                      child: Text("${homeC.dataMap['id']}"),
                    ),
                    title: Text("${homeC.dataMap['nama']}"),
                    subtitle: Text("${homeC.dataMap['umur']} tahun"),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => homeC.gantiNama(),
                child: Text("Ganti"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
