import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/models/support_group.dart';
import 'package:ssubi/utils/date_time.dart';

class GroupDetails extends StatelessWidget {
  const GroupDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final supportGroup =
        ModalRoute.of(context)!.settings.arguments as SupportGroup;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundColor: const Color(0xFF647AFF),
                        child: Text(
                          supportGroup.name[0].toUpperCase(),
                          style: const TextStyle(
                              fontSize: 72.0,
                              color: Color(0xFFFCFEFF),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        supportGroup.name,
                        style: const TextStyle(
                            color: Color(0xFF32313A),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      '${supportGroup.members}',
                      style: const TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Divider(
                  color: Color(0xFFAAAAAA),
                  thickness: 0.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      supportGroup.description,
                      style: const TextStyle(
                          color: Color(0xFF32313A),
                          fontSize: 14.0,
                          height: 1.4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      'Created by: ${supportGroup.facilityName}',
                      style: const TextStyle(
                          color: Color(0xFF666666), fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Created on: ${formatDate(supportGroup.dateCreated, 'dd MMM, yyyy')}',
                      style: const TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 12.0),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Divider(
                      color: Color(0xFFAAAAAA),
                      thickness: 0.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await backend.leaveGroup(supportGroup.id);
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Color(0xFFF5564A),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Leave Group',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFF5564A)),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Divider(
                      color: Color(0xFFAAAAAA),
                      thickness: 0.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
