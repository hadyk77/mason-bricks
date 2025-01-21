import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/add_{{name.snakeCase()}}_usecase.dart';
import '../../../domain/usecases/update_{{name.snakeCase()}}_usecase.dart';
import '../../../domain/entities/create_{{name.snakeCase()}}_params.dart';
import '../../../../../core/exceptions/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

part 'create_{{name.snakeCase()}}_state.dart';

@injectable
class Create{{name.pascalCase()}}Cubit extends Cubit<Create{{name.pascalCase()}}State> {
  Create{{name.pascalCase()}}Cubit(this.add{{name.pascalCase()}}Usecase, this.update{{name.pascalCase()}}Usecase,) : super(const Create{{name.pascalCase()}}State());

  final Add{{name.pascalCase()}}Usecase add{{name.pascalCase()}}Usecase;
  final Update{{name.pascalCase()}}Usecase update{{name.pascalCase()}}Usecase;
   Create{{name.pascalCase()}}Params params=Create{{name.pascalCase()}}Params();

  Future<void> submit()async{
    emit(Create{{name.pascalCase()}}Loading());
    late Option<Failure> result;
    if(params.id==null){
      result=await add{{name.pascalCase()}}Usecase.call(params);
    }else{
      result=await update{{name.pascalCase()}}Usecase.call(params.id!,params);
    }
    result.fold(()=>emit(Create{{name.pascalCase()}}Success()), (failure) => emit(Create{{name.pascalCase()}}Failure(failure)));
  }
}