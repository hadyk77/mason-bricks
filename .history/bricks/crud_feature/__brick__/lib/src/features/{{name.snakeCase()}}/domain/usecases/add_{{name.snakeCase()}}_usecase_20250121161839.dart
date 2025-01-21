
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/repositories/{{name.snakeCase()}}_repository.dart';
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/entities/create_{{name.snakeCase()}}_params.dart';
import 'package:client/src/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
class Add{{name.pascalCase()}}Usecase{

  final {{name.pascalCase()}}Repository repository;

  Add{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(Create{{name.pascalCase()}}Params data)=>repository.create{{name.pascalCase()}}(data);
}