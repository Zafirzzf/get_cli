
import 'package:recase/recase.dart';

import '../interface/sample_interface.dart';

class ViewModelSampleSample extends Sample {
  final String _fileName;
  ViewModelSampleSample(super.path, this._fileName,
      {super.overwrite});

  @override
  String get content => flutterViewModel;

  String get flutterViewModel => '''import 'package:get/get.dart';

import '${_fileName}_model.dart';
import 'package:aloha_universal/universal_view_model.dart';

class ${_fileName.pascalCase}ViewModel extends UniversalViewModel {

  final model = ${_fileName.pascalCase}Model();
  
  @override
  void installData() {
    super.installData();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
''';
}
