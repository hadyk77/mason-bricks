import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';
import '../../domain/entities/{{name.snakeCase()}}_entity.dart';
@injectable
class GetSingle{{name.pascalCase()}}Usecase{
  final {{name.pascalCase()}}Repository repository;

  GetSingle{{name.pascalCase()}}Usecase(this.repository);

  Future<Either<Failure,{{name.pascalCase()}}Entity>> call(int id)=>repository.get{{name.pascalCase()}}ById(id);
}