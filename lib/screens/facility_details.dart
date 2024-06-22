import 'package:flutter/material.dart';
import 'package:ssubi/models/facility.dart';

class FacilityDetails extends StatelessWidget {
  const FacilityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final facilityData = ModalRoute.of(context)!.settings.arguments as Facility;
    return Scaffold(
      backgroundColor: const Color(0xFFFCFEFF),
      appBar: AppBar(
        title: Text(facilityData.name),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(facilityData.image, height: 200),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'About this Facility',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          'Reach out now',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Get directions',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Reach out now',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.chat),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Chat')
                                ],
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.green[600]),
                                foregroundColor:
                                    WidgetStateProperty.all(Colors.white),
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.call),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Call')
                                ],
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
