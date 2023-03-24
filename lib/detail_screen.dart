import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/route_names.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key, this.param}) : super(key: key);
  String? param;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Detail")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("data ${widget.param}"),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    context.goNamed(RouteNames.screenOne);
                  },
                  child: const Text(
                    "Detail",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  )),
            )
          ]),
    );
  }
}
