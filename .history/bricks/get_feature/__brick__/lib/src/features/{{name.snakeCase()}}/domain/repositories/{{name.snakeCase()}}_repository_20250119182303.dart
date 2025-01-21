import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{project}}/src/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';

abstract class {{name.pascalCase()}}Repository {
  {{#pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}(int page);
  {{/pagination}}

  {{^pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}();
  {{/pagination}}
  
}