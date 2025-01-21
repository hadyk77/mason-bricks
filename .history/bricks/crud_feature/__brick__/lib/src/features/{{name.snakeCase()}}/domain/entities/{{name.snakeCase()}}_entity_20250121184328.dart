import 'package:equatable/equatable.dart';

class {{name.pascalCase()}}Entity extends Equatable {
  final int id;
  final String name;

  {{name.pascalCase()}}Entity({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}
