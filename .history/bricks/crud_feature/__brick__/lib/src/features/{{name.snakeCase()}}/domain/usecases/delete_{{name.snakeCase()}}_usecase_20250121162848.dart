
import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';

class Delete{{name.pascalCase()}}Usecase{
  final {{name.pascalCase()}}Repository repository;

  Delete{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(int id)=>repository.delete{{name.pascalCase()}}(id);
}