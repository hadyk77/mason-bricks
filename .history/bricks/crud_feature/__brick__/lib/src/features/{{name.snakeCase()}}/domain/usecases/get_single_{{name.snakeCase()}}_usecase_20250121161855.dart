
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/repositories/{{name.snakeCase()}}_repository.dart';
import 'package:{{project}}/src/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
class GetSingle{{name.pascalCase()}}Usecase{
  final {{name.pascalCase()}}Repository repository;

  GetSingle{{name.pascalCase()}}Usecase(this.repository);

  Future<Either<Failure,{{name.pascalCase()}}Entity>> call(int id)=>repository.get{{name.pascalCase()}}ById(id);
}