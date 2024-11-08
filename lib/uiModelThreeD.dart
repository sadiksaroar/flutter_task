// import 'package:flutter/material.dart';
// import 'package:object_3d/object_3d.dart';

// class uiModelThreeD extends StatefulWidget {
//   const uiModelThreeD({super.key});

//   @override
//   State<uiModelThreeD> createState() => _uiModelThreeDState();
// }

// class _uiModelThreeDState extends State<uiModelThreeD> {
//   // Face _fresenal(Face face){

//   // }
//   Face _fresnel(Face face) {
//     final color = Colors.blue;
//     final light = Vector3(0.0, 0.0, 100.0).normalized();
//     double ln1 = light.dot(face.normal);
//     double s1 = 1.0 + face.v1.normalized().dot(face.normal);
//     double s2 = 1.0 + face.v2.normalized().dot(face.normal);
//     double s3 = 1.0 + face.v3.normalized().dot(face.normal);
//     double power = 2;

//     Color c = Color.fromRGBO(
//         (color.red + math.pow(s1, power).round()).clamp(0, 255),
//         (color.green + math.pow(s2, power).round()).clamp(0, 255),
//         (color.blue + math.pow(s3, power).round()).clamp(0, 255),
//         1.0 - ln1.abs());
//     return face..setColors(c, c, c);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter 3D Exmple'),
//       ),
//       body: Object3D(
//         size: Size(400.0, 400.0),
//         path: 'images/bugatti.obj',
//       ),
//     );
//   }
// }
