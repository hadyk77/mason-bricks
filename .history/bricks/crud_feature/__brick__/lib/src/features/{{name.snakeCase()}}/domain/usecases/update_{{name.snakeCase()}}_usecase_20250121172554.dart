import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../../domain/entities/create_{{name.snakeCase()}}_params.dart';
@injectable
class Update{{name.pascalCase()}}Usecase{
  final {{name.pascalCase()}}Repository repository;

  Update{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(int id,Create{{name.pascalCase()}}Params data)=>repository.update{{name.pascalCase()}}(id,data);
}