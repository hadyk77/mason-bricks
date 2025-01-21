import '../../../../core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../datasources/{{name.snakeCase()}}_datasource.dart';
import "../../domain/entities/{{name.snakeCase()}}_entity.dart";

import '../../../../core/helper/dartz_handler.dart';


class {{name.pascalCase()}}RepositoryImpl extends {{name.pascalCase()}}Repository with DartzHandler {
  final {{name.pascalCase()}}Datasource datasource;

  {{name.pascalCase()}}RepositoryImpl(this.datasource);

  @override
  {{#pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}(int page) async {
    return eitherHandler(()=>datasource.get{{name.pascalCase()}}(page));
  }
  {{/pagination}}

  {{^pagination}}
  Future<Either<Failure, List<{{name.pascalCase()}}Entity>>> get{{name.pascalCase()}}() async {
    return eitherHandler(()=>datasource.get{{name.pascalCase()}}());
  }
  {{/pagination}}
}