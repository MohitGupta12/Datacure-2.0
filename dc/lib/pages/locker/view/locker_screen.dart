import 'package:flutter/material.dart';

class Document {
  final IconData icon;
  final String title;
  final String date;
  final String time;
  bool isBookmarked;

  Document({
    required this.icon,
    required this.title,
    required this.date,
    required this.time,
    this.isBookmarked = false,
  });
}

class LockerScreen extends StatefulWidget {
  const LockerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LockerScreenState createState() => _LockerScreenState();
}

class _LockerScreenState extends State<LockerScreen> {
  final List<Document> bookmarkedDocuments = [
    Document(
      icon: Icons.picture_as_pdf,
      title: 'Document 1',
      date: 'May 1, 2023',
      time: '10:00 AM',
      isBookmarked: true,
    ),
    Document(
      icon: Icons.picture_as_pdf,
      title: 'Document 2',
      date: 'May 2, 2023',
      time: '11:30 AM',
      isBookmarked: true,
    ),
    Document(
      icon: Icons.picture_as_pdf,
      title: 'Document 3',
      date: 'May 3, 2023',
      time: '2:00 PM',
      isBookmarked: true,
    ),
  ];
  final List<Document> lockedDocuments = [
    Document(
      icon: Icons.image,
      title: 'Document 7',
      date: 'May 4, 2023',
      time: '9:00 AM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 5',
      date: 'May 5, 2023',
      time: '1:30 PM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 6',
      date: 'May 6, 2023',
      time: '4:45 PM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 4',
      date: 'May 4, 2023',
      time: '9:00 AM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 5',
      date: 'May 5, 2023',
      time: '1:30 PM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 6',
      date: 'May 6, 2023',
      time: '4:45 PM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 4',
      date: 'May 4, 2023',
      time: '9:00 AM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 5',
      date: 'May 5, 2023',
      time: '1:30 PM',
    ),
    Document(
      icon: Icons.image,
      title: 'Document 6',
      date: 'May 6, 2023',
      time: '4:45 PM',
    ),
  ];

  bool isBookmarkSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(235, 244, 254, 1),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image.asset(
                  'assets/logo/locker image.png',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      height: 40,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Color.fromARGB(255, 146, 156, 169),
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          chipTheme: ChipTheme.of(context).copyWith(
                            backgroundColor: Colors.white,
                            selectedColor:
                                const Color.fromARGB(255, 40, 60, 78),
                            disabledColor: Colors.white,
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 40, 60, 78),
                            ),
                            secondaryLabelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            shadowColor: Colors.indigo.shade100,
                            elevation: 6,
                          ),
                        ),
                        child: ChoiceChip(
                          label: const Text('Bookmark'),
                          selected: isBookmarkSelected,
                          onSelected: (value) {
                            setState(() {
                              isBookmarkSelected = true;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .46,
                      child: Center(
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            chipTheme: ChipTheme.of(context).copyWith(
                              backgroundColor: Colors.white,
                              selectedColor:
                                  const Color.fromARGB(255, 40, 60, 78),
                              disabledColor: Colors.white,
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 40, 60, 78),
                              ),
                              secondaryLabelStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              shadowColor: Colors.indigo.shade100,
                              elevation: 6,
                            ),
                          ),
                          child: ChoiceChip(
                            label: const Text('Locker'),
                            selected: !isBookmarkSelected,
                            onSelected: (value) {
                              setState(() {
                                isBookmarkSelected = false;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 210, 213, 244),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(6, 7),
                        )
                      ],
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: ListView.builder(
                    itemCount: isBookmarkSelected
                        ? bookmarkedDocuments.length
                        : lockedDocuments.length,
                    itemBuilder: (context, index) {
                      final document = isBookmarkSelected
                          ? bookmarkedDocuments[index]
                          : lockedDocuments[index];
                      return Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              document.icon,
                              color: const Color.fromARGB(255, 40, 60, 78),
                            ),
                            title: Text(document.title),
                            subtitle: Text('${document.date} ${document.time}'),
                            trailing: IconButton(
                              icon: Icon(document.isBookmarked
                                  ? Icons.bookmark
                                  : Icons.bookmark_border),
                              onPressed: () {
                                setState(
                                  () {
                                    if (isBookmarkSelected) {
                                      // Move from bookmarked to locked
                                      bookmarkedDocuments.remove(document);
                                      lockedDocuments.add(document);
                                      document.isBookmarked = false;
                                    } else {
                                      // Move from locked to bookmarked
                                      lockedDocuments.remove(document);
                                      bookmarkedDocuments.add(document);
                                      document.isBookmarked = true;
                                    }
                                  },
                                );
                              },
                              color: const Color.fromARGB(255, 40, 60, 78),
                            ),
                          ),
                          const Divider(
                            indent: 30,
                            endIndent: 30,
                            color: Color.fromARGB(255, 146, 156, 169),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
