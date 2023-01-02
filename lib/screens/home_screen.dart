import 'package:flutter/material.dart';
import 'package:app_components/models/models.dart';
import 'package:app_components/router/app_routes.dart';
import 'package:app_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = <MenuOption>[...AppRoutes.menuOptions];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(menuOptions[i].name),
                leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
