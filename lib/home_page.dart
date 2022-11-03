import 'package:myapp/in_app_browser_page.dart';
import 'package:myapp/in_app_webview_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text("Sysbrasil",
            style: TextStyle(color: Color.fromARGB(255, 4, 53, 138)))),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InAppBrowserPage()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Abrir Site Institucional",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ), // TextButton
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InAppWebViewPage()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Abrir Site Opcional",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ], //children
          ),
        ),
      ),
    ); // Scaffold
  }
}
