import 'package:recase/recase.dart';

import '../interface/sample_interface.dart';

class ModelSampleSample extends Sample {
  final String _fileName;
  ModelSampleSample(super.path, this._fileName, {super.overwrite});

  @override
  String get content => flutterModel;

  String get flutterModel => '''import 'package:get/get.dart';

class ${_fileName.pascalCase}Model {
  

}
''';
}
