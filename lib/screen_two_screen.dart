import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/route_names.dart';

class ScreenTwoScreen extends StatefulWidget {
  ScreenTwoScreen({Key? key, this.param}) : super(key: key);
  String? param;

  @override
  State<ScreenTwoScreen> createState() => _ScreenTwoScreenState();
}

class _ScreenTwoScreenState extends State<ScreenTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen Two")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("data ${widget.param}"),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    context.goNamed(RouteNames.dashboard);
                  },
                  child: const Text(
                    "Back",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  )),
            ),
          ]),
    );
  }
}
