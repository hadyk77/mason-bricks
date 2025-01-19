

part of 'create_{{name.snakeCase()}}_cubit.dart';


class Create{{name.pascalCase()}}State {
  const Create{{name.pascalCase()}}State();
}

class Create{{name.pascalCase()}}Initial extends Create{{name.pascalCase()}}State {}

class Create{{name.pascalCase()}}Loading extends Create{{name.pascalCase()}}State {}

class Create{{name.pascalCase()}}Success extends Create{{name.pascalCase()}}State {
  
}

class Create{{name.pascalCase()}}Failure extends Create{{name.pascalCase()}}State {
  final Failure failure;
  Create{{name.pascalCase()}}Failure(this.failure);
}