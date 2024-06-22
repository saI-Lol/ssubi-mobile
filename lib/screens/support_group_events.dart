import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/models/event.dart';
import 'package:ssubi/models/support_group.dart';
import 'package:ssubi/tiles/event.dart';

class GroupEvents extends StatefulWidget {
  final SupportGroup supportGroup;
  const GroupEvents({super.key, required this.supportGroup});

  @override
  State<GroupEvents> createState() => _GroupEventsState();
}

class _GroupEventsState extends State<GroupEvents> {
  late Future<List<Event>> futureEvents;

  @override
  void initState() {
    super.initState();
    futureEvents = backend.getEvents(widget.supportGroup.id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFFFCFEFF),
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Color(0xFFFCFEFF),
              ),
              leadingWidth: 32.0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              centerTitle: true,
              backgroundColor: const Color(0xFF647AFF),
              title: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/support_group_details',
                      arguments: widget.supportGroup);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.supportGroup.name,
                      style: const TextStyle(
                          fontSize: 20.0, color: Color(0xFFFCFEFF)),
                    ),
                    Text(
                      widget.supportGroup.facilityName,
                      style: const TextStyle(
                          fontSize: 12.0, color: Color(0xFFD1D7FF)),
                    ),
                  ],
                ),
              ),
            ),
            body: FutureBuilder(
                future: futureEvents,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(
                      color: Colors.blue[500],
                    ));
                  } else if (snapshot.hasError) {
                    return const Center(
                        child: Text('Error occurred while loading data'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No data available'));
                  } else {
                    final events = snapshot.data!;
                    return ListView.builder(
                      itemCount: events.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
                            child: EventTile(
                              event: events[index],
                            ));
                      },
                    );
                  }
                })));
  }
}
