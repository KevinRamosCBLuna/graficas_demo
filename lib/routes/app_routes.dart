//import 'package:graficas_demo/screens/graficas_python/prueba_seaborn.dart';
import 'package:graficas_demo/screens/QR/qr_test.dart';
import 'package:graficas_demo/screens/pdf_demo/pdf_admin/pdf.dart';
import 'package:graficas_demo/screens/pdf_demo/pdf_list/pdf_list.dart';
import 'package:graficas_demo/screens/screens.dart';
import 'package:graficas_demo/models/models.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/screens/uwifi/uwifi.dart';
//import 'package:graficas_demo/screens/tabla_v2.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'pdf', name: 'PDF', screen: const PDF(), icon: Icons.picture_as_pdf),
    MenuOptions(route: 'pdf_list', name: 'Lista', screen: const PDFList(), icon: Icons.list),
    MenuOptions(route: 'Uwifi_test', icon: Icons.wifi, name: 'Uwifi Test', screen: SupportPage()),
    /*MenuOptions(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),*/
    //Seaboarn Imagen
    /* MenuOptions(route: 'Seaborn_Image', name: 'Seaborn_Image', screen: const PruebaSeaborn(), icon: Icons.list), */
    //RTA Graficas
    /* MenuOptions(route: 'services', name: 'Services', screen: const Services(), icon: Icons.list),
    MenuOptions(route: 'services_pie', name: 'Services_Pie', screen: const ServicesPie(), icon: Icons.list),
     MenuOptions(route: 'tech_utilization', name: 'Tech Utilization', screen: const TechUtilization(), icon: Icons.list),
    MenuOptions(route: 'other', name: 'Other', screen: const Other(), icon: Icons.list),
    MenuOptions(route: 'customer_rep_sales', name: 'Customer Rep Sales (7)', screen: const CustomerRepSales(), icon: Icons.list),
    MenuOptions(route: 'grand_total_opcp', name: 'Grand Total OpCo (9)', screen: const GrandTotalOpCo(), icon: Icons.list),
    MenuOptions(route: 'last_week_jobs_type_tracking', name: 'Last Week Jobs Type Tracking (9)', screen: const LastWeekJobsTypeTracking(), icon: Icons.list),
    MenuOptions(route: 'overal_jobs_time_tracking_week', name: 'Overall Jobs Time Tracking (10)', screen: const OverallJobsTimeTrackingWeek(), icon: Icons.list),
    MenuOptions(route: 'average_jobs_time_tracking_by_opco', name: 'Average Jobs Time Tracking by OpCo(11)', screen: const AverageJobsTimeTracking(), icon: Icons.list),
    MenuOptions(route: 'average_jobs_time_tracking_by_tech', name: 'Average Jobs Time Tracking by Tech​ (12)', screen: const AverageJobsTimeTrackingByTech(), icon: Icons.list),
    MenuOptions(route: 'average_jobs_time_minutes', name: 'Average Jobs Time Minutes (13)', screen: const AverageJobsTimeMinutes(), icon: Icons.list),
    MenuOptions(route: 'total_jobs_last_week', name: 'Total Jobs Last Week (14)', screen: const TotalJobsLastWeek(), icon: Icons.list),
    MenuOptions(route: 'sm_promo_by_opco', name: 'SM Promo by OpCo (29)', screen: const SmPromo(), icon: Icons.list),
    MenuOptions(route: 'sm_promo_by_opco_2', name: 'SM Promo by OpCo 2 (29)', screen: const SmPromo2(), icon: Icons.list),
    MenuOptions(route: 'configurator_tracking', name: 'Configurator Tracking (30)', screen: const ConfiguratorTracking(), icon: Icons.list),
    MenuOptions(route: 'rta_new_customer_lead_by_week', name: 'RTA New Customer Lead By Week (30)', screen: const RTANewCustomerLead(), icon: Icons.list),
    MenuOptions(route: 'weekly_leads_by_channel', name: 'Weekly Leads by Channel (31)', screen: const WeeklyLeadsChannel(), icon: Icons.list),
    MenuOptions(route: 'configurator_weekly_leads_by_opCop', name: 'Configurator Weekly Leads By OpCop (31)', screen: const ConfiguratorWeeklyLeadsOpCop(), icon: Icons.list),
    MenuOptions(route: 'configurator_weekly_leads_by_opCop_2', name: 'Configurator Weekly Leads By OpCop 2 (31)', screen: const ConfiguratorWeeklyLeadsOpCop2(), icon: Icons.list),
    MenuOptions(route: 'configurator_statistics', name: 'Configurator Statistics (33)', screen: const ConfiguratorStatistics(), icon: Icons.list),
    MenuOptions(route: 'referrals_overall', name: 'Referrals Overall (34)', screen: const ReferralsOverall(), icon: Icons.list),
    MenuOptions(route: 'last_week', name: 'Last Week (34)', screen: const LastWeek(), icon: Icons.list),
    MenuOptions(route: 'referrals_tracking_by_week', name: 'Referrals Tracking By Week (34)', screen: const ReferralsTrackingByWeek(), icon: Icons.list),
 */
    //Arux
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
    appRoutes.addAll({
      'home': (BuildContext context) => const HomeScreen(),
      'pdf': (BuildContext context) => const PDF(),
      'pdf_list': (BuildContext context) => const PDFList(),
      'pdf_client': (BuildContext context) => const Services(),
      'Lista': (BuildContext context) => const Services(),
      'Uwifi_test': (BuildContext context) => const SupportPage(),
      'qrTest':(BuildContext context)=> const QRTest()
    });

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
