import 'package:flutter/material.dart';
import 'package:{{project}}/src/core/widgets/my_scaffold.dart';
class {{name.pascalCase()}}Page extends StatefulWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  State<{{name.pascalCase()}}Page> createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(),
      body:Container(),
    );
  }
}
