import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/modules/home/components/item_widget.dart';
import 'package:flutter_modular_5/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.highlight_off),
          onPressed: controller.logoff,
        ),
        title: TextField(
          controller: controller.txtController,
        ),
        actions: [
          Observer(builder: (_) {
            return IconButton(
              icon: Icon(Icons.add),
              onPressed: controller.txtController.text.isEmpty
                  ? null
                  : controller.save,
            );
          }),
        ],
      ),
      body: Observer(builder: (context) {
        return ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (_, index) {
              return ItemWidget(
                index: index,
              );
            });
      }),
    );
  }
}
