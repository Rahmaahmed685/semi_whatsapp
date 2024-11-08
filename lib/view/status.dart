import 'package:flutter/material.dart';
import 'package:semi_whatsapp/core/colors/colors.dart';

// class StatusContactsScreen extends ConsumerWidget {
//   const StatusContactsScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return FutureBuilder<List<Status>>(
//       future: ref.read(statusControllerProvider).getStatus(context),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Loader();
//         }
//         return ListView.builder(
//           itemCount: snapshot.data!.length,
//           itemBuilder: (context, index) {
//             var statusData = snapshot.data![index];
//             return Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(
//                       context,
//                       StatusScreen.routeName,
//                       arguments: statusData,
//                     );
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 8.0),
//                     child: ListTile(
//                       title: Text(
//                         statusData.username,
//                       ),
//                       leading: CircleAvatar(
//                         backgroundImage: NetworkImage(
//                           statusData.profilePic,
//                         ),
//                         radius: 30,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Divider(color: mainColor, indent: 85),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }
// }
class StatusContactsScreen extends StatelessWidget {
  const StatusContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Statuss"),),);
  }
}
