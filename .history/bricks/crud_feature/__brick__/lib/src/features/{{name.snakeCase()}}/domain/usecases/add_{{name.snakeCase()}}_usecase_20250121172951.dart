import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../repositories/{{name.snakeCase()}}s_repository.dart';
import '../../domain/entities/create_{{name.snakeCase()}}_params.dart';
@injectable
class Add{{name.pascalCase()}}sUsecase{

  final {{name.pascalCase()}}Repository repository;

  Add{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(Create{{name.pascalCase()}}Params data)=>repository.create{{name.pascalCase()}}(data);
}