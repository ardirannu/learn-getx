import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = "data".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  var dataSet = RxSet<int>({1, 2, 3});
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "nama": "Panjul",
    "umur": 90,
  }.obs;

  void gantiNama() {
    dataMap['nama'] = "Sumanto";
  }

  int angkaSelanjutnya = 4;

  void tambahDataSet() {
    dataSet.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void ubahDataSet() {
    dataSet.value = {99, 2, 3};
  }

  void ubahDataList() {
    dataList[0] = 99;
  }

  void tambahDataList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void gantiDataBool() {
    // if (dataBool.isTrue) {
    //   // awal true -> false
    //   dataBool.value = false;
    // } else {
    //   // awal false -> true
    //   dataBool.value = true;
    // }

    dataBool.toggle();
  }

  void updateDataString() {
    dataString.value = "data (updated)";
  }

  void resetDataString() {
    dataString.value = "data";
  }

  void incrementInt() => dataInt++;

  void decrementInt() => dataInt--;

  void incrementDouble() => dataDouble.value++;

  void decrementDouble() => dataDouble.value--;
}
