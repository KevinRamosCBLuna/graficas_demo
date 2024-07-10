import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/uwifi_provider.dart';
import 'package:graficas_demo/screens/uwifi/cards.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:provider/provider.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UwifiProvider>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('dfdsfs')),
        body: Form(
          key: UniqueKey(),
          child: Column(
            children: [
              SupportFormCard(
                key: UniqueKey(),
                title1: 'Remplacement',
                icon1: Icons.sync,
                title2: 'Reason for Replacement:',
                children: [
                  Column(
                    children: [
                      ListView.builder(
                        itemCount: provider.options.length,
                        itemBuilder: (context, index) {
                          Option option = provider.options[index];
                          return CheckboxListTile(
                            title: Text(option.title),
                            value: option.value,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                provider.options[index].value = !provider.options[index].value;
                              });
                            },
                            activeColor: AppTheme.primary,
                          );
                        },
                      ),
                    ],
                  )
                  /* SizedBox(
                    height: 100,
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () {
                            setState(() {
                              allcheck.value = !allcheck.value;
                              print(allcheck.value);
                            });
                          },
                          leading: Checkbox(
                            value: allcheck.value,
                            onChanged: (value) {
                              setState(() {
                                allcheck.value = !allcheck.value;
                                print(allcheck.value);
                              });
                            },
                          ),
                          title: Text(allcheck.title),
                        )
                      ],
                    ),
                  ) */
                ],
              ),
              SupportFormCard(
                icon1: Icons.sync,
                title2: 'Replacement Preference:',
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: provider.options.map((option) {
                      return CheckboxListTile(
                        title: Text(option.title),
                        value: option.value,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {
                          setState(() {
                            option.value = value!;
                          });
                        },
                        activeColor: AppTheme.primary,
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

