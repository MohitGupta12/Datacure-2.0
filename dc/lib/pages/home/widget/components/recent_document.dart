import 'package:flutter/material.dart';

// class FamilyScrollMenu extends StatelessWidget {
//   FamilyScrollMenu({super.key});

//   static const male_icon = Icon(
//     Icons.male_outlined,
//     color: Color(0xff2d3c4e),
//   );

//   static const female_icon = Icon(
//     Icons.female_outlined,
//     color: Color(0xff2d3c4e),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(
//         left: 10,
//         right: 5,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 3.0),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Container(
//               height: 270.0,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 231, 231, 231),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Column(
//                   children: generatedWidget,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   final List<Widget> generatedWidget = List.generate(4, (value) {
//     return Container();
//   });

//   ListTile ListTitleFam(String title, String subTitle) {
//     return ListTile(
//       leading: Container(
//         margin: const EdgeInsets.only(right: 12),
//         child: const Icon(
//           Icons.male_outlined,
//           size: 32,
//           color: Color(0xff2d3c4e),
//         ),
//       ),
//       title: Text(
//         title,
//         style: const TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Color(0xff2d3c4e),
//         ),
//       ),
//       subtitle: Text(
//         subTitle,
//         style: const TextStyle(color: Colors.grey, fontSize: 14),
//       ),
//       trailing: Container(
//         margin: const EdgeInsets.only(right: 16),
//         child: male_icon,
//       ),
//     );
//   }
// }

class DocumentListScreen extends StatelessWidget {
  final List<Document> documents = [
    Document(
      title: 'X-ray report',
      lastAccessedDate: 'May 25, 2023',
    ),
    Document(
      title: 'MRI',
      lastAccessedDate: 'May 24, 2023',
    ),
    Document(
      title: 'Slips',
      lastAccessedDate: 'May 23, 2023',
    ),
    Document(
      title: 'Report',
      lastAccessedDate: 'May 22, 2023',
    ),
  ];

  DocumentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 210, 213, 244),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(6, 7),
          )
        ], borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: documents.length,
          itemBuilder: (BuildContext context, int index) {
            return DocumentItem(document: documents[index]);
          },
        ),
      ),
    );
  }
}

class DocumentItem extends StatelessWidget {
  final Document document;

  const DocumentItem({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 10,
          minVerticalPadding: 0,
          contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
          iconColor: Colors.blueGrey,
          leading: const Icon(Icons.description, size: 28),
          title: Text(document.title, style: const TextStyle(fontSize: 14)),
          subtitle: Text('Last Accessed: ${document.lastAccessedDate}',
              style: const TextStyle(fontSize: 12)),
          trailing: SizedBox(
            height: 30,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_rounded),
            ),
          ),
        ),
        const Divider(
          height: 0,
          thickness: .5,
          color: Colors.blueGrey,
          indent: 30.0,
          endIndent: 30.0,
        )
      ],
    );
  }
}

class Document {
  final String title;
  final String lastAccessedDate;

  Document({
    required this.title,
    required this.lastAccessedDate,
  });
}

class CustomListItem extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  const CustomListItem({
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          children: [
            if (leading != null) ...[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: leading,
              ),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null) ...[
                    DefaultTextStyle(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      child: title!,
                    ),
                    const SizedBox(height: 4.0),
                  ],
                  if (subtitle != null) ...[
                    DefaultTextStyle(
                      style: TextStyle(color: Colors.grey),
                      child: subtitle!,
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null) ...[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: trailing,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
