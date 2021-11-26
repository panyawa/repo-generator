import 'dart:convert';
import 'dart:io';
import 'package:json_to_dart/json_to_dart.dart';

void main(List<String> arguments) {
  createFile();
}

Future createFile() async {
  String newFile = await File('../test.json').readAsString();
  final classGenerator = ModelGenerator('Zample');
  final finalCode = classGenerator.generateDartClasses(newFile);
  print(finalCode.code);
  //generateWholeRepo(newFile);
}
