import 'package:flutter/material.dart';
import 'package:semi_whatsapp/view/select_contact.dart';
import 'package:semi_whatsapp/view/status.dart';
import '../core/colors/colors.dart';
import 'contact_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  double scaleFactor = 1;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        centerTitle: false,
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white54),
            onPressed: () {},
          ),
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white54,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text(
                  'Create Group',
                ),
                // onTap: () => Future(
                //       () => Navigator.pushNamed(
                //       context, CreateGroupScreen.routeName),
                // ),
              )
            ],
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          tabs: const [
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ContactsList(),
          StatusContactsScreen(),
          Center(child: Text('Calls'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_tabController.index == 0) {
            Navigator.pushNamed(context, SelectContactsScreen.routeName);
          } else {
            // File? pickedImage = await pickImageFromGallery(context);
            // if (pickedImage != null) {
            //   Navigator.pushNamed(
            //     context,
            //     ConfirmStatusScreen.routeName,
            //     arguments: pickedImage,
            //   );

             }
        },
        backgroundColor: mainColor,
        child: const Icon(
          Icons.add_comment_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

