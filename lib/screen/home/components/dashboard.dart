import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool dataLoaded = false;

  // Simulate loading data
  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      dataLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!dataLoaded)
              const CircularProgressIndicator()
            else
              // Your dashboard widgets go here
              const Text(
                'Data loaded! Your super cool dashboard is ready.',
                style: TextStyle(fontSize: 18),
              ),
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
