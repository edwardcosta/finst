import 'package:finst/screen/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  final Controller controller = Get.find();

  Dashboard({super.key});

  Future<void> loadData() async {
    controller.dataLoaded.value = false;
    await Future.delayed(const Duration(seconds: 2));
    controller.dataLoaded.value = true;
  }

  Widget _bodyBuild(bool dataLoaded) {
    if (!dataLoaded) {
      return const CircularProgressIndicator();
    }
    // Your dashboard widgets go here
    return const Text(
      'Data loaded! Your super cool dashboard is ready.',
      style: TextStyle(fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => _bodyBuild(controller.dataLoaded.value)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Trigger data loading when the button is pressed
          loadData();
        },
        tooltip: 'Load Data',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
