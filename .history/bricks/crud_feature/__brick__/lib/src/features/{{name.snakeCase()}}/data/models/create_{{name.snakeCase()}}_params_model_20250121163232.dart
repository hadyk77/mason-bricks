import '../../domain/entities/create_{{name.snakeCase()}}_params.dart';

class Create{{name.pascalCase()}}ParamsModel extends Create{{name.pascalCase()}}Params{

  Create{{name.pascalCase()}}ParamsModel({super.id});
  factory Create{{name.pascalCase()}}ParamsModel.fromEntity(Create{{name.pascalCase()}}Params entity)=>
  Create{{name.pascalCase()}}ParamsModel(id: entity.id);

  Map<String,dynamic> toJson()=>{};

  

}
