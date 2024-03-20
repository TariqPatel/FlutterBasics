import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Learn Flutter"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint("Hello right bar");
              },
              icon: const Icon(
                Icons.info_outline,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset("images/einstein.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(color: Colors.black),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "This is a text widget",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  debugPrint("elevated button click");
                },
                child: const Text("Elevated button"),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint("elevated button click");
                },
                child: const Text("Elevated button"),
              ),
              TextButton(
                onPressed: () {
                  debugPrint("elevated button click");
                },
                child: const Text("Elevated button"),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint("Gesture row clicked");
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.local_fire_department, color: Colors.blue),
                    Text("Row Widget"),
                    Icon(Icons.local_fire_department, color: Colors.red),
                  ],
                ),
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool newBoolean) {
                  setState(() {
                    isSwitch = newBoolean;
                  });
                },
              ),
              Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBoolean) {
                  setState(() {
                    isCheckbox = newBoolean ?? false;
                  });
                },
              ),
              Image.network("https://wallpaperaccess.com/full/1909521.jpg")
            ],
          ),
        ));
  }
}
