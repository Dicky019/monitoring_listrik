import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoring'),
        centerTitle: true,
      ),
      body: exampledata(controller: controller,),
    );
  }
}

class exampledata extends StatelessWidget {
  const exampledata({
    Key? key, required this.controller,
  }) : super(key: key);


  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.arus.value)),
          Obx(() => Text(controller.daya.value)),
          Obx(() => Text(controller.power.value)),
          // TextButton(
          //   onPressed: () => controller.increment(),
          //   child: Text(
          //     'Get Data',
          //     style: TextStyle(fontSize: 20),
          //   ),
          // ),
        ],
      ),
    );
  }
}
