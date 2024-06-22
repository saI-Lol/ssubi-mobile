import 'package:flutter/material.dart';
import 'package:ssubi/models/event.dart';
import 'package:ssubi/utils/date_time.dart';

class EventTile extends StatelessWidget {
  final Event event;

  const EventTile({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF6F7FF),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              formatDate(event.date, 'dd MMM, yyyy'),
              style: const TextStyle(fontSize: 10.0, color: Color(0xFF647AFF)),
            ),
          ),
        ),
        Container(
          color: const Color(0xFFF6F7FF),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(event.imageUrl),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            event.title,
                            style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF32313A)),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Icon(
                            Icons.bookmark,
                            color: Color(0xFFD1D1D1),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${formatDate(event.date, 'dd MMM yyyy')}. ${formatTime(event.startTime, 'h:mm a')} to ${formatTime(event.endTime, 'h:mm a')}',
                            style: const TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),
                          Text(
                            event.location,
                            style: const TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'About',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF32313A)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              event.description,
                              style: const TextStyle(
                                  fontSize: 14.0, color: Color(0xFF666666)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            formatDate(event.postDate, 'dd MMM yyyy'),
                            style: const TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
