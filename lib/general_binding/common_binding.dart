import 'package:basic_code_structure/dio_api_handler/api_worker.dart';
import 'package:get/get.dart';

/// Its A Example to Use This Type Of Binding
class CommonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiWorker());

    /// if you want to use Controller you can use this side of code  [Get.find()]
  }
}
