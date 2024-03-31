import 'package:fast_ai/presentation/home_page/home_page.dart';import 'package:fast_ai/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:fast_ai/core/app_export.dart';import 'controller/home_container_controller.dart';// ignore_for_file: must_be_immutable
class HomeContainerScreen extends GetWidget<HomeContainerController> {const HomeContainerScreen({Key? key}) : super(key: key, );

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.black90003, body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition, ), ), bottomNavigationBar: _buildBottomBar(), ), ); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}, ); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Explore: return "/"; case BottomBarEnum.Settings: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); default: return DefaultWidget();} } 
 }
