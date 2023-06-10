import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_code_project/my_controller.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text("Name is ${myController.student.name}", style: const TextStyle(fontSize: 35))),

              //If entire class is observable
              //Obx(() => Text("Name is ${myController.student.value.name}", style: const TextStyle(fontSize: 35))),

              const SizedBox(height: 16),
              ElevatedButton(onPressed: (){
                //if Individual variables are observable
                myController.convertToUppercase();

                //if entire class is observable
                //myController.convertUppercase();

                }, child: const Text("Upper"))
            ],
          ),
        )
      )
    );
  }
}
