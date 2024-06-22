import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/models/facility.dart';

class Facilities extends StatefulWidget {
  const Facilities({super.key});

  @override
  State<Facilities> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  late Future<List<Facility>> futureFacilities;

  @override
  void initState() {
    super.initState();
    futureFacilities = backend.getFacilities();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFFFCFEFF),
            appBar: AppBar(
              title: const Text("Facilities"),
              backgroundColor: const Color(0xFF647AFF),
              foregroundColor: const Color(0xFFFCFEFF),
            ),
            body: FutureBuilder(
                future: futureFacilities,
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
                    final facilities = snapshot.data!;
                    return ListView.builder(
                        itemCount: facilities.length,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        itemBuilder: (context, index) {
                          final facility = facilities[index];
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/facility',
                                    arguments: facility);
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xFFEEEEEE),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
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
                                              facility.name[0].toUpperCase(),
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
                                                  facility.name,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: false,
                                                  style: const TextStyle(
                                                      color: Color(0xFF32313A),
                                                      fontSize: 16.0),
                                                ),
                                                Text(
                                                  facility.location,
                                                  style: const TextStyle(
                                                      color: Color(0xFF999999)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  }
                })));
  }
}
