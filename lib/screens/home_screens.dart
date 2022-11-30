import 'package:flutter/material.dart';
import 'package:graficas_demo/routes/app_routes.dart';
import 'package:graficas_demo/theme/App_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Graficas'),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(menuOptions[i].name),
                leading: Icon(
                  menuOptions[i].icon,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  /* final route = MaterialPageRoute(
                    builder: (context) => const ListView2Screen(),
                  );
                  Navigator.push(context, route);*/
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
