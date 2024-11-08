import 'dart:io';

import 'package:flutter/material.dart';
import 'package:semi_whatsapp/core/colors/colors.dart';

// class ConfirmStatusScreen extends ConsumerWidget {
//   static const String routeName = '/confirm-status-screen';
//   final File file;
//   const ConfirmStatusScreen({
//     Key? key,
//     required this.file,
//   }) : super(key: key);
//
//   void addStatus(WidgetRef ref, BuildContext context) {
//     ref.read(statusControllerProvider).addStatus(file, context);
//     Navigator.pop(context);
//   }
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       body: Center(
//         child: AspectRatio(
//           aspectRatio: 9 / 16,
//           child: Image.file(file),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(
//           Icons.done,
//           color: Colors.white,
//         ),
//         onPressed: () => addStatus(ref, context),
//         backgroundColor: mainColor,
//       ),
//     );
//   }
// }
class ConfirmStatusScreen extends StatefulWidget {
  static const String routeName = '/confirm-status-screen';
  final File file;
  const ConfirmStatusScreen({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  State<ConfirmStatusScreen> createState() => _ConfirmStatusScreenState();
}

class _ConfirmStatusScreenState extends State<ConfirmStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 9 / 16,
          child: Text("imagee"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
        // onPressed: () => addStatus(ref, context),
        onPressed: (){},
        backgroundColor: mainColor,
      ),
    );
  }
}
