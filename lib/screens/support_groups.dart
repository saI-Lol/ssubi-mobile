import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/models/support_group.dart';
import 'package:ssubi/tiles/joined_support_group.dart';
import 'package:ssubi/tiles/unjoined_support_group.dart';

class SupportGroups extends StatefulWidget {
  const SupportGroups({super.key});

  @override
  State<SupportGroups> createState() => _SupportGroupsState();
}

class _SupportGroupsState extends State<SupportGroups> {
  late final Future<List<SupportGroup>> futureSupportGroups;
  @override
  void initState() {
    super.initState();
    futureSupportGroups = backend.getSupportGroups();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFCFEFF),
          elevation: 0,
          title: const Text('Support Groups',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xFF32313A),
                  fontWeight: FontWeight.w500)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const TabBar(
                  indicatorColor: Color(0xFF647AFF),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Color(0xFF647AFF),
                  unselectedLabelColor: Color(0xFF999999),
                  labelStyle: TextStyle(fontSize: 15.0),
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Joined',
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  FutureBuilder(
                      future: futureSupportGroups,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator(
                            color: Color(0xFF647AFF),
                          ));
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text(
                                  'Error occurred while loading data: ${snapshot.error.toString()}'));
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
                          return const Center(child: Text('No data available'));
                        } else {
                          final supportGroups = snapshot.data!;
                          return ListView.builder(
                              itemCount: supportGroups.length,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              itemBuilder: (context, index) {
                                final supportGroup = supportGroups[index];
                                return supportGroup.joined
                                    ? JoinedSupportGroup(
                                        supportGroup: supportGroup,
                                        index: index)
                                    : UnJoinedSupportGroup(
                                        supportGroup: supportGroup,
                                        index: index);
                              });
                        }
                      }),
                  FutureBuilder(
                      future: futureSupportGroups,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator(
                            color: Color(0xFF647AFF),
                          ));
                        } else if (snapshot.hasError) {
                          return const Center(
                              child: Text('Error occurred while loading data'));
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
                          return const Center(child: Text('No data available'));
                        } else {
                          final supportGroups = snapshot.data!;
                          final joinedSupportGroups = supportGroups
                              .where((supportGroup) => supportGroup.joined)
                              .toList();
                          return ListView.builder(
                              itemCount: joinedSupportGroups.length,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              itemBuilder: (context, index) {
                                final joinedSupportGroup =
                                    joinedSupportGroups[index];
                                return JoinedSupportGroup(
                                    supportGroup: joinedSupportGroup,
                                    index: index);
                              });
                        }
                      })
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
