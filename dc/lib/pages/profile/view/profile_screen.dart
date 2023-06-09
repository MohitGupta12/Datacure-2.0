import 'package:dc/pages/account_page.dart';
import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 235, 244, 254),
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: userProfile(),
            ),
            Container(
              color: const Color.fromARGB(255, 235, 244, 254),
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: Container(
                padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 210, 213, 244),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(4, 5),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    _buildListItem(
                      icon: Icons.account_circle,
                      title: 'My Account',
                      description: 'Manage your account settings',
                      onTap: () {
                        // Navigate to My Account page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountPage()),
                        );
                      },
                    ),
                    divider(),
                    _buildListItem(
                      icon: Icons.folder_shared,
                      title: 'Shared Documents',
                      description: 'Manage your shared document',
                      onTap: () {
                        // Navigate to Shared Documents page
                      },
                    ),
                    divider(),
                    _buildListItem(
                      icon: Icons.people,
                      title: 'Family Documents',
                      description: 'Manage your family document',
                      onTap: () {
                        // Navigate to Family Documents page
                      },
                    ),
                    divider(),
                    _buildListItem(
                      icon: Icons.lock,
                      title: 'Two-factor Authentication',
                      description: 'Enable additional security layer',
                      onTap: () {
                        // Navigate to Two-factor Authentication page
                      },
                    ),
                    divider(),
                    _buildListItem(
                      icon: Icons.logout,
                      title: 'Logout',
                      description: 'Sign out of your account',
                      onTap: () {
                        // Handle logout action
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 235, 244, 254),
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 210, 213, 244),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(4, 5),
                    )
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      _buildIconWithTitle(
                        icon: Icons.settings,
                        title: 'Settings',
                        onTap: () {
                          // Navigate to Settings page
                        },
                      ),
                      _buildIconWithTitle(
                        icon: Icons.help,
                        title: 'Help & Support',
                        onTap: () {
                          // Navigate to Help & Support page
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(),
    );
  }

  Divider divider() {
    return const Divider(
      indent: 25,
      endIndent: 25,
      color: Color.fromARGB(255, 146, 156, 169),
    );
  }

  Container userProfile() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 210, 213, 244),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(4, 5),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundColor: Color.fromARGB(255, 40, 60, 78),
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'User ID: 123456',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildListItem({
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color.fromARGB(255, 40, 60, 78),
          size: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 40, 60, 78),
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(
            color: Color.fromARGB(255, 146, 156, 169),
            fontSize: 12,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Color.fromARGB(255, 40, 60, 78),
        ),
      ),
    );
  }

  Widget _buildIconWithTitle({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color.fromARGB(255, 40, 60, 78),
          size: 28,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 40, 60, 78),
            fontSize: 16,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Color.fromARGB(255, 40, 60, 78),
        ),
      ),
    );
  }
}












// import 'package:flutter/material.dart';

// class ProfileSettingsPage extends StatelessWidget {
//   const ProfileSettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 color: const Color.fromARGB(255, 235, 244, 254),
//                 padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
//                 child: userProfile(),
//               ),
//               Container(
//                 color: const Color.fromARGB(255, 235, 244, 254),
//                 padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
//                 child: Container(
//                   padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Color.fromARGB(255, 210, 213, 244),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: Offset(4, 5),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Column(
//                     children: [
//                       _buildListItem(
//                         icon: Icons.account_circle,
//                         title: 'My Account',
//                         description: 'Manage your account settings',
//                       ),
//                       divider(),
//                       _buildListItem(
//                         icon: Icons.folder_shared,
//                         title: 'Shared Documents',
//                         description: 'Manage your shared document',
//                       ),
//                       divider(),
//                       _buildListItem(
//                         icon: Icons.people,
//                         title: 'Family Documents',
//                         description: 'Manage your family document',
//                       ),
//                       divider(),
//                       _buildListItem(
//                         icon: Icons.lock,
//                         title: 'Two-factor Authentication',
//                         description: 'Enable additional security layer',
//                       ),
//                       divider(),
//                       _buildListItem(
//                         icon: Icons.logout,
//                         title: 'Logout',
//                         description: 'Sign out of your account',
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 color: const Color.fromARGB(255, 235, 244, 254),
//                 padding: const EdgeInsets.only(left: 16, right: 16),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10.0),
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Color.fromARGB(255, 210, 213, 244),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: Offset(4, 5),
//                       )
//                     ],
//                   ),
//                   child: Container(
//                     padding: const EdgeInsets.only(left: 5),
//                     child: Column(
//                       children: [
//                         _buildIconWithTitle(
//                             icon: Icons.settings, title: 'Settings'),
//                         _buildIconWithTitle(
//                             icon: Icons.help, title: 'Help & Support'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: const BottomAppBar());
//   }

//   Divider divider() {
//     return const Divider(
//       indent: 25,
//       endIndent: 25,
//       color: Color.fromARGB(255, 146, 156, 169),
//     );
//   }

//   Container userProfile() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
//       decoration: BoxDecoration(
//         boxShadow: const [
//           BoxShadow(
//             color: Color.fromARGB(255, 210, 213, 244),
//             spreadRadius: 0,
//             blurRadius: 10,
//             offset: Offset(4, 5),
//           )
//         ],
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: Row(
//         children: [
//           const CircleAvatar(
//             radius: 24,
//             backgroundColor: Color.fromARGB(255, 40, 60, 78),
//             child: Icon(
//               Icons.person,
//               size: 35,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(width: 16.0),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 'John Doe',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 4),
//               Text(
//                 'User ID: 123456',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildListItem(
//       {required IconData icon,
//       required String title,
//       required String description}) {
//     return ListTile(
//       leading: Icon(
//         icon,
//         color: Colors.blue.shade200,
//         size: 30,
//       ),
//       title: Text(title,
//           style: const TextStyle(
//             color: Color.fromARGB(255, 40, 60, 78),
//             fontSize: 16,
//           )),
//       subtitle: Text(description,
//           style: const TextStyle(
//               color: Color.fromARGB(255, 146, 156, 169), fontSize: 12)),
//       trailing: const Icon(
//         Icons.keyboard_arrow_right,
//         color: Color.fromARGB(255, 40, 60, 78),
//       ),
//     );
//   }

//   Widget _buildIconWithTitle({
//     required IconData icon,
//     required String title,
//   }) {
//     return ListTile(
//       leading: Icon(
//         icon,
//         color: Colors.blue.shade200,
//         size: 28,
//       ),
//       title: Text(title,
//           style: const TextStyle(
//             color: Color.fromARGB(255, 40, 60, 78),
//             fontSize: 16,
//           )),
//       trailing: const Icon(
//         Icons.keyboard_arrow_right,
//         color: Color.fromARGB(255, 40, 60, 78),
//       ),
//     );
//   }
// }
