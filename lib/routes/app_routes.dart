import 'package:graficas_demo/screens/screens.dart';
import 'package:graficas_demo/models/models.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/screens/tabla_v2.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    /*MenuOptions(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),*/
    MenuOptions(route: 'weekly_leads_by_channel', name: 'Weekly Leads by Channel', screen: const WeeklyLeadsChannel(), icon: Icons.list),
    MenuOptions(route: 'configurator_weekly_leads_by_opCop', name: 'Configurator Weekly Leads By OpCop', screen: const ConfiguratorWeeklyLeadsOpCop(), icon: Icons.list),
    MenuOptions(route: 'configurator_weekly_leads_by_opCop_2', name: 'Configurator Weekly Leads By OpCop 2', screen: const ConfiguratorWeeklyLeadsOpCop2(), icon: Icons.list),
    MenuOptions(route: 'configurator_tracking', name: 'Configurator Tracking', screen: const ConfiguratorTracking(), icon: Icons.list),
    MenuOptions(route: 'rta_new_customer_lead_by_week', name: 'RTA New Customer Lead By Week', screen: const RTANewCustomerLead(), icon: Icons.list),

    /* MenuOptions(
        route: 'perdidas_ahorro_beneficioV2',
        name: 'Perdidas de Ahorro/ BeneficioV2',
        screen: const ChartsDemo(),
        icon: Icons.list),
    MenuOptions(
        route: 'tablaV2',
        name: 'Tabla ProveedoresV2',
        screen: const TablaV2(),
        icon: Icons.list),
    MenuOptions(
        route: 'tabla',
        name: 'Tabla Proveedores',
        screen: const Tabla(),
        icon: Icons.list),
    MenuOptions(
        route: 'ahorro_beneficio',
        name: 'Ahorro/ Beneficio',
        screen: const AhorroBeneficio(),
        icon: Icons.list),
    MenuOptions(
        route: 'perdidas_ahorro_beneficio',
        name: 'Perdidas de Ahorro/ Beneficio',
        screen: const PerdidasAhorroBeneficio(),
        icon: Icons.list),*/
    /*MenuOptions(
        route: 'ahorro_obtenido',
        name: 'Ahorro Obtenido',
        screen: const AhorroObtenido(),
        icon: Icons.list),
    MenuOptions(
        route: 'ahorro_por_esquema',
        name: 'Ahorro por esquema',
        screen: const Ahorro_por_Esquema(),
        icon: Icons.list),
    MenuOptions(
        route: 'ahorro_mensual',
        name: 'Ahorro Mensual',
        screen: const Ahorro_Mensual(),
        icon: Icons.list),
    MenuOptions(
        route: 'ahorro_por_proveedores',
        name: 'Ahorro por Proveedores',
        screen: const Ahorro_por_Proveedores(),
        icon: Icons.list),
    MenuOptions(
        route: 'retrasos_cbc',
        name: 'Retrasos CBC de NC en SAP',
        screen: const Retrasos_CBC(),
        icon: Icons.list),
    MenuOptions(
        route: 'proveedores_con_retardos',
        name: 'Proveedores con Retardos en Envios de NC',
        screen: const Proveedores_Con_Retardos(),
        icon: Icons.list),
    MenuOptions(
        route: 'c_perdidas_de_ahorro',
        name: 'Causas de perdida de ahorro',
        screen: const Causas_Perdidas_Ahorro(),
        icon: Icons.list),
    MenuOptions(
        route: 'propuestas_push',
        name: 'Propuestas Push Aceptadas vs rechazadas',
        screen: const Propuestas_Push(),
        icon: Icons.list),
    MenuOptions(
        route: 'respuesta_push',
        name: '% de Respuesta Push',
        screen: const Respuestas_Push(),
        icon: Icons.list),
    MenuOptions(
        route: 'envios_NC',
        name: '% de envios de NC - Pull NC Pago',
        screen: const Envios_NC(),
        icon: Icons.list),
    MenuOptions(
        route: 'pagos_ft',
        name: 'Pagos Fuera de Tiempo',
        screen: const Pagos_FT(),
        icon: Icons.list),
    MenuOptions(
        route: '%_pagos_ft',
        name: '% de Pagos Fuera de Tiempo',
        screen: const Porcentaje_Pagos_FT(),
        icon: Icons.list),
    MenuOptions(
        route: 'ahorros_no_obtenidos',
        name: 'Ahorros no optenidos por falta de fondos',
        screen: const Ahorros_No_Optenidos(),
        icon: Icons.list),
    MenuOptions(
        route: 'fondos_NU',
        name: 'Fondos No Utilizados',
        screen: const Fondos_NU(),
        icon: Icons.list),*/
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic>? onGenerateRoute<RouteSettings>(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
