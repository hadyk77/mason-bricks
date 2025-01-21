
import '../../../../core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../../domain/entities/create_{{name.snakeCase()}}_params.dart';
class Add{{name.pascalCase()}}Usecase{

  final {{name.pascalCase()}}Repository repository;

  Add{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(Create{{name.pascalCase()}}Params data)=>repository.create{{name.pascalCase()}}(data);
}