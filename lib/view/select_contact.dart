import 'package:flutter/material.dart';

// class SelectContactsScreen extends ConsumerWidget {
//   static const String routeName = '/select-contact';
//   const SelectContactsScreen({Key? key}) : super(key: key);
//
//   void selectContact(
//       WidgetRef ref, Contact selectedContact, BuildContext context) {
//     ref
//         .read(selectContactControllerProvider)
//         .selectContact(selectedContact, context);
//   }
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Select contact'),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.search,
//             ),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.more_vert,
//             ),
//           ),
//         ],
//       ),
//       body: ref.watch(getContactsProvider).when(
//         data: (contactList) => ListView.builder(
//             itemCount: contactList.length,
//             itemBuilder: (context, index) {
//               final contact = contactList[index];
//               return InkWell(
//                 onTap: () => selectContact(ref, contact, context),
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 8.0),
//                   child: ListTile(
//                     title: Text(
//                       contact.displayName,
//                       style: const TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                     leading: contact.photo == null
//                         ? null
//                         : CircleAvatar(
//                       backgroundImage: MemoryImage(contact.photo!),
//                       radius: 30,
//                     ),
//                   ),
//                 ),
//               );
//             }),
//         error: (err, trace) => ErrorScreen(error: err.toString()),
//         loading: () => const Loader(),
//       ),
//     );
//   }
// }
class SelectContactsScreen extends StatefulWidget {
  static const String routeName = '/select-contact';
  const SelectContactsScreen({super.key});

  @override
  State<SelectContactsScreen> createState() => _SelectContactsScreenState();
}

class _SelectContactsScreenState extends State<SelectContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Select Contact"),),);
  }
}
