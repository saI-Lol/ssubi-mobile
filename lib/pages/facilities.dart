// ignore_for_file: must_be_immutable, unnecessary_const

import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  Facilities({super.key});

  List<Map<String, dynamic>> facilities = [
    {
      'facilityName': 'Strong Minds Uganda',
      'facilityLocation': 'Plot 32, Luthuli Rise, Bugolobi, Kampala',
      'specialty':
          'Free Mental Health charity organization that improves mental health for low income and marginalized women and adolescents.',
      'fee': 'Free',
      'Hours': 'Weekdays (9am - 5pm), Weekends (9am - 5pm).',
      'Phone': '+256 000 000 000',
      'WhatsApp': '+256 000 000 000',
    },
    {
      'facilityName': 'Mindverse',
      'facilityLocation': 'Plot 24, Bombo Rd, Kampala',
      'specialty':
          'Mental health organization providing comprehensive services including therapy, counseling, and support groups.',
      'fee': 'Variable',
      'Hours': 'Weekdays (8am - 6pm), Saturdays (9am - 1pm).',
      'Phone': '+256 111 111 111',
      'WhatsApp': '+256 111 111 111',
    },
    {
      'facilityName': 'Mending Thoughts Ug',
      'facilityLocation': 'Plot 18, Acacia Avenue, Kololo, Kampala',
      'specialty':
          'Focuses on providing mental health support through counseling, workshops, and peer support groups.',
      'fee': 'Variable',
      'Hours': 'Weekdays (9am - 5pm), Saturdays (10am - 2pm).',
      'Phone': '+256 222 222 222',
      'WhatsApp': '+256 222 222 222',
    },
    {
      'facilityName': 'Peacful Mind',
      'facilityLocation': 'Plot 45, Kira Road, Kampala',
      'specialty':
          'Offers mental wellness programs, therapy sessions, and stress management workshops.',
      'fee': 'Variable',
      'Hours': 'Weekdays (9am - 6pm), Weekends (10am - 4pm).',
      'Phone': '+256 333 333 333',
      'WhatsApp': '+256 333 333 333',
    },
    {
      'facilityName': 'Kampala Serenity Center',
      'facilityLocation': 'Plot 76, Ggaba Road, Kampala',
      'specialty':
          'Provides a peaceful environment for mental health therapy, meditation sessions, and relaxation techniques.',
      'fee': 'Variable',
      'Hours': 'Weekdays (8am - 6pm), Saturdays (9am - 1pm).',
      'Phone': '+256 444 444 444',
      'WhatsApp': '+256 444 444 444',
    },
    {
      'facilityName': 'Phoenix Recovery Clinic',
      'facilityLocation': 'Plot 12, Jinja Road, Kampala',
      'specialty':
          'Specializes in recovery programs for addiction and mental health issues, offering personalized treatment plans.',
      'fee': 'Variable',
      'Hours': 'Weekdays (8am - 5pm), Weekends (9am - 3pm).',
      'Phone': '+256 555 555 555',
      'WhatsApp': '+256 555 555 555',
    },
    {
      'facilityName': 'Tranquility Mental Wellness Center',
      'facilityLocation': 'Plot 9, Bukoto Street, Kampala',
      'specialty':
          'Dedicated to providing mental health services including therapy, support groups, and wellness workshops.',
      'fee': 'Variable',
      'Hours': 'Weekdays (9am - 5pm), Saturdays (10am - 2pm).',
      'Phone': '+256 666 666 666',
      'WhatsApp': '+256 666 666 666',
    },
    {
      'facilityName': 'Unity MindCare Facility',
      'facilityLocation': 'Plot 7, Nakasero Road, Kampala',
      'specialty':
          'Focuses on community mental health, providing therapy, counseling, and educational programs.',
      'fee': 'Variable',
      'Hours': 'Weekdays (8am - 6pm), Saturdays (9am - 1pm).',
      'Phone': '+256 777 777 777',
      'WhatsApp': '+256 777 777 777',
    },
    {
      'facilityName': 'Lighthouse Wellness Clinic',
      'facilityLocation': 'Plot 14, Entebbe Road, Kampala',
      'specialty':
          'Offers holistic mental health services including counseling, therapy, and wellness programs.',
      'fee': 'Variable',
      'Hours': 'Weekdays (8am - 5pm), Weekends (10am - 2pm).',
      'Phone': '+256 888 888 888',
      'WhatsApp': '+256 888 888 888',
    },
    {
      'facilityName': 'Heart to Heart',
      'facilityLocation': 'Plot 21, Mukwano Road, Kampala',
      'specialty':
          'Provides mental health support through therapy sessions, support groups, and educational workshops.',
      'fee': 'Variable',
      'Hours': 'Weekdays (9am - 5pm), Saturdays (10am - 2pm).',
      'Phone': '+256 999 999 999',
      'WhatsApp': '+256 999 999 999',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFCFEFF),
          elevation: 0,
          title: const Text('Facilities',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xFF32313A),
                  fontWeight: FontWeight.w500)),
        ),
        body: ListView.builder(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: facilities.length,
            itemBuilder: (context, index) {
              final facility = facilities[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
                child: GestureDetector(
                  onTap: () {},
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded to take available space
                        Expanded(
                          child: Row(
                            children: [
                              // Circle avatar with groupName initial
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: index % 2 == 0
                                    ? const Color(0xFF647AFF)
                                    : const Color(0xFFB0BCFF),
                                child: Text(
                                  facility['facilityName'][0].toUpperCase(),
                                  style: const TextStyle(
                                      fontSize: 28.0,
                                      color: Color(0xFFFCFEFF),
                                      fontWeight: FontWeight.w200),
                                ),
                              ),

                              // SizedBox to separate avatar and column
                              const SizedBox(width: 16.0),

                              // Flexible to constrain column
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      facility['facilityName'],
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: const TextStyle(
                                          color: Color(0xFF32313A),
                                          fontSize: 16.0),
                                    ),
                                    Text(
                                      facility['facilityLocation'],
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
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
            }));
  }
}
