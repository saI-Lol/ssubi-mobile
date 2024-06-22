import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/models/hotline.dart';
import 'package:ssubi/utils/log.dart';

class CrisisHotlines extends StatefulWidget {
  const CrisisHotlines({super.key});

  @override
  State<CrisisHotlines> createState() => _CrisisHotlinesState();
}

class _CrisisHotlinesState extends State<CrisisHotlines> {
  late Future<List<Hotline>> futureHotlines;

  @override
  void initState() {
    super.initState();
    futureHotlines = backend.getCrisisHotlines();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Crisis Hotlines"),
              backgroundColor: Colors.blue[500],
              foregroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: FutureBuilder(
                future: futureHotlines,
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
                    final hotlines = snapshot.data!;
                    return ListView.builder(
                        itemCount: hotlines.length,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        itemBuilder: (context, index) {
                          final hotline = hotlines[index];
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFEEEEEE),
                                    width: 1,
                                  ),
                                ),
                              ),
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 24,
                                          backgroundColor: index % 2 == 0
                                              ? const Color(0xFF647AFF)
                                              : const Color(0xFFB0BCFF),
                                          child: Text(
                                            hotline.facility[0].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 28.0,
                                                color: Color(0xFFFCFEFF),
                                                fontWeight: FontWeight.w200),
                                          ),
                                        ),
                                        const SizedBox(width: 16.0),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                hotline.facility,
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: false,
                                                style: const TextStyle(
                                                    color: Color(0xFF32313A),
                                                    fontSize: 16.0),
                                              ),
                                              Text(
                                                hotline.phoneNumber,
                                                style: const TextStyle(
                                                    color: Color(0xFF999999)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 16.0),
                                        ElevatedButton(
                                            onPressed: () async {
                                              try {
                                                await backend.makePhoneCall(
                                                    hotline.phoneNumber);
                                              } catch (e) {
                                                logger.e(e);
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFF58D68D),
                                                foregroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            child: const Text('Call'))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                })));
  }
}
