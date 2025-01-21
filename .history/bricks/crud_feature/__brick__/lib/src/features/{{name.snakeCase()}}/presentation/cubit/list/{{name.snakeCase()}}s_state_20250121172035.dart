

part of '{{name.snakeCase()}}s_cubit.dart';


class {{name.pascalCase()}}sState {
  const {{name.pascalCase()}}State();
}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Success extends {{name.pascalCase()}}State {
  final List<{{name.pascalCase()}}Entity> {{name.snakeCase()}};
  {{name.pascalCase()}}Success(this.{{name.snakeCase()}});
}

class {{name.pascalCase()}}Failure extends {{name.pascalCase()}}State {
  final Failure failure;
  {{name.pascalCase()}}Failure(this.failure);
}