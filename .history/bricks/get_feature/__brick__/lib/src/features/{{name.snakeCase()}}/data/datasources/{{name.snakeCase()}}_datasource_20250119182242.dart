import 'package:{{project}}/src/core/services/network_service.dart';
import 'package:{{project}}/src/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';
abstract class {{name.pascalCase()}}Datasource {

  {{#pagination}}
  Future<List<{{name.pascalCase()}}Model>> get{{name.pascalCase()}}(int page);
  {{/pagination}}

  {{^pagination}}
  Future<List<{{name.pascalCase()}}Model>> get{{name.pascalCase()}}();
  {{/pagination}}
}

class {{name.pascalCase()}}DatasourceImpl implements {{name.pascalCase()}}Datasource {
  final NetworkService networkService;

  {{name.pascalCase()}}DatasourceImpl(this.networkService);
  
  {{#pagination}}
  @override
  Future<List<{{name.pascalCase()}}Model>> get{{name.pascalCase()}}(int page) async {
    final response=await networkService.get(path: "",queryParameters: {
      "page":page,
      "perPage":20,
    });

    return List<{{name.pascalCase()}}Model>.from(response.data.map((e)=>{{name.pascalCase()}}Model.fromJson(e)));
  }
  {{/pagination}}

  {{^pagination}}
  @override
  Future<List<{{name.pascalCase()}}Model>> get{{name.pascalCase()}}() async {
     final response=await networkService.get(path: "");

    return List<{{name.pascalCase()}}Model>.from(response.data.map((e)=>{{name.pascalCase()}}Model.fromJson(e)));
  }
  {{/pagination}}
}
