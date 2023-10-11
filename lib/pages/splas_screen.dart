import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pactics_1/pages/home_page.dart';
import 'package:pactics_1/pages/onbording_screen.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const OnbordingScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              const Text(
                ' Moulvibazar\nPolytechnic Institute Apps',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Developed By: Fokrul Islam',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.purple,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
