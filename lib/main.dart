import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class Animal3DModelScreen extends StatefulWidget {
  @override
  _Animal3DModelScreenState createState() => _Animal3DModelScreenState();
}

class _Animal3DModelScreenState extends State<Animal3DModelScreen> {
  late FlutterGlPlugin _glPlugin;

  @override
  void initState() {
    super.initState();
    _init3DModel();
  }

  void _init3DModel() async {
    _glPlugin = FlutterGlPlugin();
    await _glPlugin.initialize(
      options: FlutterGlPluginOptions(file: "images/bugatti.obj"),
    );
    setState(() {}); // Ensure the UI is refreshed after the model loads
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3D Animal Model")),
      body: Center(
        child: _glPlugin.isReady
            ? FlutterGlView(
                plugin: _glPlugin,
                options: FlutterGlViewOptions(scale: 2.0),
              )
            : CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    _glPlugin.dispose();
    super.dispose();
  }
}
