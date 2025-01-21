import '../entities/{{name.snakeCase()}}_entity.dart';
import '../entities/create_{{name.snakeCase()}}_params.dart';
import '../../../../core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';

abstract class {{name.pascalCase()}}sRepository {
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
