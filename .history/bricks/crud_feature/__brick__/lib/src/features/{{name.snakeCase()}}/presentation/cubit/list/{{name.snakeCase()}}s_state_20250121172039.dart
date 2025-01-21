

part of '{{name.snakeCase()}}s_cubit.dart';


class {{name.pascalCase()}}sState {
  const {{name.pascalCase()}}State();
}

class {{name.pascalCase()}}sInitial extends {{name.pascalCase()}}sState {}

class {{name.pascalCase()}}sLoading extends {{name.pascalCase()}}sState {}

class {{name.pascalCase()}}sSuccess extends {{name.pascalCase()}}sState {
  final List<{{name.pascalCase()}}Entity> {{name.snakeCase()}};
  {{name.pascalCase()}}sSuccess(this.{{name.snakeCase()}});
}

class {{name.pascalCase()}}Failure extends {{name.pascalCase()}}State {
  final Failure failure;
  {{name.pascalCase()}}Failure(this.failure);
}