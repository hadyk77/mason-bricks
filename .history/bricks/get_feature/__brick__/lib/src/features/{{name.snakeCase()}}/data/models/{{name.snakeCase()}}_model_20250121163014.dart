import '../../domain/entities/{{name.snakeCase()}}_entity.dart';

class {{name.pascalCase()}}Model extends {{name.pascalCase()}}Entity {
  

  {{name.pascalCase()}}Model({required super.id, required super.name,});

  factory {{name.pascalCase()}}Model.fromJson(Map<String,dynamic> json)=>
  {{name.pascalCase()}}Model(id: json["id"],name: json["name"]);

  {{#generateToJson}}
  Map<String,dynamic> toJson()=>{
    "id":id,
    "name":name,
  };
  {{/generateToJson}}
}
