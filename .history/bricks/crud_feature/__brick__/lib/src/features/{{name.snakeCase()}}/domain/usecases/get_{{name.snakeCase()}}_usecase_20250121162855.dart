import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../../domain/entities/{{name.snakeCase()}}_entity.dart';

class Get{{name.pascalCase()}}Usecase {
  final {{name.pascalCase()}}Repository repository;

  Get{{name.pascalCase()}}Usecase(this.repository);
  
  {{#pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> call(int page) async {
    return await repository.get{{name.pascalCase()}}(page);
  }
  {{/pagination}}

  {{^pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> call() async {
    return await repository.get{{name.pascalCase()}}();
  }
  {{/pagination}}
}