
import 'package:client/src/features/{{name.snakeCase()}}/domain/repositories/{{name.snakeCase()}}_repository.dart';
import 'package:client/src/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';

class Delete{{name.pascalCase()}}Usecase{
  final {{name.pascalCase()}}Repository repository;

  Delete{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(int id)=>repository.delete{{name.pascalCase()}}(id);
}