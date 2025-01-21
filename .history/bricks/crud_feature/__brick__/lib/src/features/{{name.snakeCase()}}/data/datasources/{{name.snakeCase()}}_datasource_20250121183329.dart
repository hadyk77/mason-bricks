import 'package:injectable/injectable.dart';
import '../../../../core/services/network_service.dart';
import '../models/{{name.snakeCase()}}_model.dart';
import '../models/create_{{name.snakeCase()}}_params_model.dart';
abstract class {{name.pascalCase()}}Datasource {

  {{#pagination}}
  Future<List<{{name.pascalCase()}}Model>> get{{name.pascalCase()}}(int page);
  {{/pagination}}

  {{^pagination}}
  Future<List<{{name.pascalCase()}}Model>> get{{name.pascalCase()}}();
  {{/pagination}}


  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}ById(int id);

  Future<void> create{{name.pascalCase()}}(Create{{name.pascalCase()}}ParamsModel data);

  Future<void> update{{name.pascalCase()}}(int id,Create{{name.pascalCase()}}ParamsModel data);

  Future<void> delete{{name.pascalCase()}}(int id);
}

@Injectable(as: {{name.pascalCase()}}Datasources)
class {{name.pascalCase()}}DatasourceImpl implements {{name.pascalCase()}}sDatasource {
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

  @override
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}ById(int id) async {
    final response=await networkService.get(path: "/$id");

    return {{name.pascalCase()}}Model.fromJson(response.data);
  }

  @override
  Future<void> create{{name.pascalCase()}}(Create{{name.pascalCase()}}ParamsModel data) async {
   await networkService.post(path: "",data: data.toJson());
  }

  @override
  Future<void> update{{name.pascalCase()}}(int id,Create{{name.pascalCase()}}ParamsModel data) async {
    await networkService.put(path: "/$id",data: data.toJson());
  }

  @override
  Future<void> delete{{name.pascalCase()}}(int id) async {
    await networkService.delete(path: "/$id");
  }
}
