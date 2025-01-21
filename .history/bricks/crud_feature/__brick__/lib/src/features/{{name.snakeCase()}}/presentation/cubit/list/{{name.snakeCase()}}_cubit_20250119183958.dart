import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/usecases/get_{{name.snakeCase()}}_usecase.dart';
import 'package:{{project}}/src/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{project}}/src/core/exceptions/failure.dart';

part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit(this.get{{name.pascalCase()}}Usecase) : super(const {{name.pascalCase()}}State());

  final Get{{name.pascalCase()}}Usecase get{{name.pascalCase()}}Usecase;
  List<{{name.pascalCase()}}Entity> {{name.snakeCase()}} = [];

  {{#pagination}}
  int page = 1;
  bool hasMore = true;
  {{/pagination}}

  Future<void> get{{name.pascalCase()}}(
   {{#pagination}}
   {bool forceRefresh=false}
   {{/pagination}}


  ) async {
    {{#pagination}}
    if(forceRefresh){
      page=1;
      hasMore=true;
      {{name.snakeCase()}}=[];
    }
    {{/pagination}}
    emit( {{name.pascalCase()}}Loading());
    {{#pagination}}
    final result = await get{{name.pascalCase()}}Usecase.call(page);
    {{/pagination}}
    {{^pagination}}
    final result = await get{{name.pascalCase()}}Usecase.call();
    {{/pagination}}
    result.fold((failure) => emit({{name.pascalCase()}}Failure(failure)), (data){

      {{#pagination}}
       {{name.snakeCase()}}.addAll(data);
       hasMore=data.isNotEmpty;
       page++;
      {{/pagination}}
      {{^pagination}}
      {{name.snakeCase()}} = data;
      {{/pagination}}
      emit({{name.pascalCase()}}Success(data));
    } ,);
  }
}