import 'package:recase/recase.dart';

import '../interface/sample_interface.dart';

/// [Sample] file from Module_Controller file creation.
class ControllerSample extends Sample {
  final String _fileName;
  final bool _isServer;
  ControllerSample(super.path, this._fileName, this._isServer,
      {super.overwrite});

  @override
  String get content => _isServer ? serverController : flutterController;

  String get serverController => '''import 'package:get_server/get_server.dart';

class ${_fileName.pascalCase}Controller extends GetxController {
  //TODO: Implement ${_fileName.pascalCase}Controller
  

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
''';
  String get flutterController => '''import 'package:get/get.dart';

import '${_fileName}_view_model.dart';
import 'package:aloha_universal/universal_controller.dart';

class ${_fileName.pascalCase}Controller extends UniversalController {

  final viewModel = ${_fileName.pascalCase}ViewModel();
  
  @override
  void onInit() {
    internalViewmodel = viewmodel;
    super.onInit();
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
  }
}
''';
}
