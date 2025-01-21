import '../../../../core/exceptions/failure.dart';
import '../../../../core/helper/dartz_handler.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../datasources/{{name.snakeCase()}}_datasource.dart';
import '../../domain/entities/{{name.snakeCase()}}_entity.dart';
import '../../domain/entities/create_{{name.snakeCase()}}_params.dart';
import '../models/create_{{name.snakeCase()}}_params_model.dart';
import 'package:dartz/dartz.dart';

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

  @override
  Future<Either<Failure,{{name.pascalCase()}}Entity>> get{{name.pascalCase()}}ById(int id) async {
    return eitherHandler(()=>datasource.get{{name.pascalCase()}}ById(id));
  }

  @override
    Future<Option<Failure>> create{{name.pascalCase()}}(Create{{name.pascalCase()}}Params data) async {
    return optionHandler(()=>datasource.create{{name.pascalCase()}}(Create{{name.pascalCase()}}ParamsModel.fromEntity(data)));
  }

  @override
  Future<Option<Failure>> update{{name.pascalCase()}}(int id,Create{{name.pascalCase()}}Params data) async {
    return optionHandler(()=>datasource.update{{name.pascalCase()}}(id,Create{{name.pascalCase()}}ParamsModel.fromEntity(data)));
  }

  @override
  Future<Option<Failure>> delete{{name.pascalCase()}}(int id) async {
    return optionHandler(()=>datasource.delete{{name.pascalCase()}}(id));
  }
}