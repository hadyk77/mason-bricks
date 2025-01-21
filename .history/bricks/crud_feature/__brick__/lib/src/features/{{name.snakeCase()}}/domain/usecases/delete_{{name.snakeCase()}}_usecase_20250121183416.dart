import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';
@injectable
class Delete{{name.pascalCase()}}Usecase{
  final {{name.pascalCase()}}Repository repository;

  Delete{{name.pascalCase()}}Usecase(this.repository);

  Future<Option<Failure>> call(int id)=>repository.delete{{name.pascalCase()}}(id);
}