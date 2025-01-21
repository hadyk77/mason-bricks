
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/repositories/{{name.snakeCase()}}_repository.dart';
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/entities/create_{{name.snakeCase()}}_params.dart';
import 'package:{{project}}/src/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
class Update{{name.pascalCase()}}Usecase{
  final {{name.pascalCase()}}Repository repository;

  Update{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(int id,Create{{name.pascalCase()}}Params data)=>repository.update{{name.pascalCase()}}(id,data);
}