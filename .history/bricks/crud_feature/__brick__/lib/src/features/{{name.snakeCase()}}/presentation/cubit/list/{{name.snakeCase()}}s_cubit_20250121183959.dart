import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/exceptions/failure.dart';
import '../../../domain/usecases/get_{{name.snakeCase()}}s_usecase.dart';
import '../../../domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:injectable/injectable.dart';
part '{{name.snakeCase()}}s_state.dart';

@injectable
class {{name.pascalCase()}}sCubit extends Cubit<{{name.pascalCase()}}sState> {
  {{name.pascalCase()}}sCubit(this.get{{name.pascalCase()}}sUsecase) : super( {{name.pascalCase()}}sState());

  final Get{{name.pascalCase()}}sUsecase get{{name.pascalCase()}}sUsecase;
  List<{{name.pascalCase()}}Entity> {{name.snakeCase()}}s = [];

  {{#pagination}}
  int page = 1;
  bool hasMore = true;
  {{/pagination}}

  Future<void> get{{name.pascalCase()}}s(
   {{#pagination}}
   {bool forceRefresh=false}
   {{/pagination}}


  ) async {
    {{#pagination}}
    if(forceRefresh){
      page=1;
      hasMore=true;
      {{name.snakeCase()}}s=[];
    }
    {{/pagination}}
    emit( {{name.pascalCase()}}sLoading());
    {{#pagination}}
    final result = await get{{name.pascalCase()}}sUsecase.call(page);
    {{/pagination}}
    {{^pagination}}
    final result = await get{{name.pascalCase()}}sUsecase.call();
    {{/pagination}}
    result.fold((failure) => emit({{name.pascalCase()}}sFailure(failure)), (data){

      {{#pagination}}
       {{name.snakeCase()}}s.addAll(data);
       hasMore=data.isNotEmpty;
       page++;
      {{/pagination}}
      {{^pagination}}
      {{name.snakeCase()}}s = data;
      {{/pagination}}
      emit({{name.pascalCase()}}sSuccess(data));
    } ,);
  }
}