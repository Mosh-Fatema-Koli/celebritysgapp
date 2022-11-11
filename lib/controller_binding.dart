import 'package:celebritysgapp/controlleter/nft_controller.dart';
import 'package:get/instance_manager.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NftController());
    Get.put(NftController());
    Get.put(NftController());
    Get.put(NftController());
  }
}
