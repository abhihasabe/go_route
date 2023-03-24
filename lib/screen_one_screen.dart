import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/route_names.dart';

class ScreenOneScreen extends StatefulWidget {
  ScreenOneScreen({Key? key, this.param}) : super(key: key);
  String? param;

  @override
  State<ScreenOneScreen> createState() => _ScreenOneScreenState();
}

class _ScreenOneScreenState extends State<ScreenOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen One")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("data ${widget.param}"),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    context.goNamed(RouteNames.screenTwo,
                        queryParams: {"name": "Abhijeet"});
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  )),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    context.pushNamed(RouteNames.screenTwo,
                        queryParams: {"name": "Abhijeet"});
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
