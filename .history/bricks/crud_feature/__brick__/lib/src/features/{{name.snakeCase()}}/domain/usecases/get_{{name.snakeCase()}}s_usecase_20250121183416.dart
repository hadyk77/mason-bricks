import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';
import '../../domain/entities/{{name.snakeCase()}}_entity.dart';

@injectable
class Get{{name.pascalCase()}}sUsecase {
  final {{name.pascalCase()}}sRepository repository;

  Get{{name.pascalCase()}}sUsecase(this.repository);
  
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