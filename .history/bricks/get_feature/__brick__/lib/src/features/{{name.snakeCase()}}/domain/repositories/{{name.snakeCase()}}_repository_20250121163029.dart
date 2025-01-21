import '../../../../core/exceptions/failure.dart';
import "../../domain/entities/{{name.snakeCase()}}_entity.dart";
import 'package:dartz/dartz.dart';

abstract class {{name.pascalCase()}}Repository {
  {{#pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}(int page);
  {{/pagination}}

  {{^pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}();
  {{/pagination}}
  
}