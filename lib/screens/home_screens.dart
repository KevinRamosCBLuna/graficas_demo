import 'package:flutter/material.dart';
import 'package:graficas_demo/routes/app_routes.dart';
//import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_icon_button.dart';
import 'package:graficas_demo/theme/App_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
        centerTitle: true,
      ),
      body: 
      //Lista V1
      ListView.separated(
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
      //Lista de botones
      /* Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextIconButton(
              isLoading: false,
              icon: const Icon(
                Icons.qr_code,
                color: AppTheme.primaryBackground,
              ),
              text: 'Citas',
              onTap: () {
                Navigator.pushNamed(context, 'citasList');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextIconButton(
              isLoading: false,
              icon: const Icon(
                Icons.qr_code,
                color: AppTheme.primaryBackground,
              ),
              text: 'QR Test',
              onTap: () {
                Navigator.pushNamed(context, 'qrTest');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextIconButton(
              isLoading: false,
              icon: const Icon(
                Icons.picture_as_pdf,
                color: AppTheme.primaryBackground,
              ),
              text: 'PDF',
              onTap: () {
                Navigator.pushNamed(context, 'pdf');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextIconButton(
              isLoading: false,
              icon: const Icon(
                Icons.list,
                color: AppTheme.primaryBackground,
              ),
              text: 'PDF List',
              onTap: () {
                Navigator.pushNamed(context, 'pdf_list');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextIconButton(
              isLoading: false,
              icon: const Icon(
                Icons.person,
                color: AppTheme.primaryBackground,
              ),
              text: 'PDF Client',
              onTap: () {
                Navigator.pushNamed(context, 'pdf_client');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextIconButton(
              isLoading: false,
              icon: const Icon(
                Icons.person,
                color: AppTheme.primaryBackground,
              ),
              text: 'Uwifi test',
              onTap: () {
                Navigator.pushNamed(context, 'Uwifi_test');
              },
            ),
          )
        ],
      ), */
    );
  }
}
