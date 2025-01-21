import 'package:flutter/material.dart';
import 'package:client/src/core/widgets/my_scaffold.dart';
class {{name.pascalCase()}}Screen extends StatefulWidget {
  const {{name.pascalCase()}}Screen({super.key});

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
