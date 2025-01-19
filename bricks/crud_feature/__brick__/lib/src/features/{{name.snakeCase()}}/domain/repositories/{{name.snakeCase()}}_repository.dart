import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/entities/create_{{name.snakeCase()}}_params.dart';
import 'package:{{project}}/src/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';

abstract class {{name.pascalCase()}}Repository {
  {{#pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}(int page);
  {{/pagination}}

  {{^pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}();
  {{/pagination}}

  Future<Either<Failure,{{name.pascalCase()}}Entity>> get{{name.pascalCase()}}ById(int id);

  Future<Option<Failure>> create{{name.pascalCase()}}(Create{{name.pascalCase()}}Params data);

  Future<Option<Failure>> update{{name.pascalCase()}}(int id,Create{{name.pascalCase()}}Params data);

  Future<Option<Failure>> delete{{name.pascalCase()}}(int id);
}
