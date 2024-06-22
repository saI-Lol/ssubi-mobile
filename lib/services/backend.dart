import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:ssubi/models/blog.dart';
import 'package:ssubi/models/event.dart';
import 'package:ssubi/models/facility.dart';
import 'package:ssubi/models/hotline.dart';
import 'package:ssubi/models/support_group.dart';
import 'package:ssubi/models/video.dart';
import 'package:ssubi/utils/log.dart';
import 'package:url_launcher/url_launcher.dart';

class BackendService {
  final String backendUrl = '';

  Future<List<Hotline>> getCrisisHotlines() async {
    List<Map<String, dynamic>> hotlines = [
      {'facility': 'Mental Health Uganda', 'phoneNumber': '0800567710'},
      {'facility': 'Mental Health Uganda', 'phoneNumber': '0800567710'},
      {'facility': 'Mental Health Uganda', 'phoneNumber': '0800567710'},
      {'facility': 'Mental Health Uganda', 'phoneNumber': '0800567710'},
      {'facility': 'Mental Health Uganda', 'phoneNumber': '0800567710'}
    ];
    return Future.delayed(const Duration(seconds: 3), () {
      return hotlines.map((hotline) => Hotline.fromJson(hotline)).toList();
    });
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    canLaunchUrl(launchUri).then((bool result) {
      if (!result) {
        throw 'Could not launch $launchUri';
      } else {
        launchUrl(launchUri);
      }
    });
  }

  Future<List<Blog>> getBlogs() async {
    List<Map<String, dynamic>> blogs = [
      {
        'title': 'Mental Health and You',
        'content': loremIpsum(paragraphs: 3, words: 150),
        'author': 'John Doe',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'content': loremIpsum(paragraphs: 3, words: 150),
        'author': 'John Doe',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'content': loremIpsum(paragraphs: 3, words: 150),
        'author': 'John Doe',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'content': loremIpsum(paragraphs: 3, words: 150),
        'author': 'John Doe',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'content': loremIpsum(paragraphs: 3, words: 150),
        'author': 'John Doe',
        'date': '2022-01-01'
      },
    ];
    return Future.delayed(const Duration(seconds: 3), () {
      return blogs.map((blog) => Blog.fromJson(blog)).toList();
    });
  }

  Future<List<Video>> getVideos() async {
    List<Map<String, dynamic>> videos = [
      {
        'title': 'Mental Health and You',
        'author': 'John Doe',
        'url':
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'author': 'John Doe',
        'url':
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'author': 'John Doe',
        'url':
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'author': 'John Doe',
        'url':
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        'date': '2022-01-01'
      },
      {
        'title': 'Mental Health and You',
        'author': 'John Doe',
        'url':
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        'date': '2022-01-01'
      },
    ];
    return Future.delayed(const Duration(seconds: 3), () {
      return videos.map((video) => Video.fromJson(video)).toList();
    });
  }

  Future<List<SupportGroup>> getSupportGroups() async {
    List<Map<String, dynamic>> supportGroups = [
      {
        'name': 'Mental Triumph',
        'facilityName': 'Mental Health Uganda',
        'joined': true,
        'id': '1',
        'dateCreated': '2024-01-01',
        'members': 150,
        'description':
            'A support group for individuals overcoming mental health challenges.'
      },
      {
        'name': 'Mental Triumph',
        'facilityName': 'Mental Health Uganda',
        'joined': false,
        'id': '2',
        'dateCreated': '2024-02-01',
        'members': 200,
        'description':
            'A support group for individuals overcoming mental health challenges.'
      },
      {
        'name': 'Mental Triumph',
        'facilityName': 'Mental Health Uganda',
        'joined': false,
        'id': '3',
        'dateCreated': '2024-03-01',
        'members': 180,
        'description':
            'A support group for individuals overcoming mental health challenges.'
      },
      {
        'name': 'Mental Triumph',
        'facilityName': 'Mental Health Uganda',
        'joined': true,
        'id': '4',
        'dateCreated': '2024-04-01',
        'members': 220,
        'description':
            'A support group for individuals overcoming mental health challenges.'
      },
      {
        'name': 'Mental Triumph',
        'facilityName': 'Mental Health Uganda',
        'joined': false,
        'id': '5',
        'dateCreated': '2024-05-01',
        'members': 190,
        'description':
            'A support group for individuals overcoming mental health challenges.'
      },
      {
        'name': 'Mental Triumph',
        'facilityName': 'Mental Health Uganda',
        'joined': false,
        'id': '6',
        'dateCreated': '2024-06-01',
        'members': 160,
        'description':
            'A support group for individuals overcoming mental health challenges.'
      },
      {
        'name': 'Mental Triumph',
        'facilityName': 'Mental Health Uganda',
        'joined': true,
        'id': '7',
        'dateCreated': '2024-07-01',
        'members': 210,
        'description':
            'A support group for individuals overcoming mental health challenges.'
      },
    ];

    return Future.delayed(const Duration(seconds: 3), () {
      return supportGroups
          .map((supportGroup) => SupportGroup.fromJson(supportGroup))
          .toList();
    });
  }

  Future<void> joinSupportGroup(String supportGroupId) async {
    return Future.delayed(const Duration(seconds: 3), () {
      logger.d('Joined $supportGroupId');
      return;
    });
  }

  Future<void> leaveGroup(String supportGroupId) async {
    return Future.delayed(const Duration(seconds: 3), () {
      logger.d('leaving support group $supportGroupId');
      return;
    });
  }

  Future<List<Event>> getEvents(String supportGroupId) async {
    List<Map<String, dynamic>> events = [
      {
        "date": "2024-06-15",
        "startTime": "2024-06-15 18:30",
        "endTime": "2024-06-15 21:00",
        "location": "Central Park, NYC",
        "title": "Summer Music Festival",
        "description":
            "Join us for a night of live music featuring local bands and artists.",
        "imageUrl":
            "https://images.pexels.com/photos/6096339/pexels-photo-6096339.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "postDate": "2024-05-01"
      },
      {
        "date": "2024-06-15",
        "startTime": "2024-06-15 18:30",
        "endTime": "2024-06-15 21:00",
        "location": "Central Park, NYC",
        "title": "Summer Music Festival",
        "description":
            "Join us for a night of live music featuring local bands and artists.",
        "imageUrl":
            "https://images.pexels.com/photos/6096339/pexels-photo-6096339.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "postDate": "2024-05-01"
      },
      {
        "date": "2024-06-15",
        "startTime": "2024-06-15 18:30",
        "endTime": "2024-06-15 21:00",
        "location": "Central Park, NYC",
        "title": "Summer Music Festival",
        "description":
            "Join us for a night of live music featuring local bands and artists.",
        "imageUrl":
            "https://images.pexels.com/photos/6096339/pexels-photo-6096339.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "postDate": "2024-05-01"
      },
      {
        "date": "2024-06-15",
        "startTime": "2024-06-15 18:30",
        "endTime": "2024-06-15 21:00",
        "location": "Central Park, NYC",
        "title": "Summer Music Festival",
        "description":
            "Join us for a night of live music featuring local bands and artists.",
        "imageUrl":
            "https://images.pexels.com/photos/6096339/pexels-photo-6096339.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "postDate": "2024-05-01"
      },
      {
        "date": "2024-06-15",
        "startTime": "2024-06-15 18:30",
        "endTime": "2024-06-15 21:00",
        "location": "Central Park, NYC",
        "title": "Summer Music Festival",
        "description":
            "Join us for a night of live music featuring local bands and artists.",
        "imageUrl":
            "https://images.pexels.com/photos/6096339/pexels-photo-6096339.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "postDate": "2024-05-01"
      }
    ];

    return Future.delayed(const Duration(seconds: 3), () {
      return events.map((event) => Event.fromJson(event)).toList();
    });
  }

  Future<List<Facility>> getFacilities() async {
    return Future.delayed(const Duration(seconds: 3), () {
      List<Map<String, dynamic>> facilities = [
        {
          "name": "Healthcare Center",
          "location": "Plot 32, Luthuli Rise, Bugolobi, Kampala",
          "speciality": "General Medicine",
          "image": "https://example.com/images/healthcare_center.jpg",
          "phone": "+1234567890",
          "openTime": "Weekdays (9am - 5pm), Weekends (9am - 2pm)"
        },
        {
          "name": "Healthcare Center",
          "location": "Plot 32, Luthuli Rise, Bugolobi, Kampala",
          "speciality": "General Medicine",
          "image": "https://example.com/images/healthcare_center.jpg",
          "phone": "+1234567890",
          "openTime": "Weekdays (9am - 5pm), Weekends (9am - 2pm)"
        },
        {
          "name": "Healthcare Center",
          "location": "Plot 32, Luthuli Rise, Bugolobi, Kampala",
          "speciality": "General Medicine",
          "image": "https://example.com/images/healthcare_center.jpg",
          "phone": "+1234567890",
          "openTime": "Weekdays (9am - 5pm), Weekends (9am - 2pm)"
        },
        {
          "name": "Healthcare Center",
          "location": "Plot 32, Luthuli Rise, Bugolobi, Kampala",
          "speciality": "General Medicine",
          "image": "https://example.com/images/healthcare_center.jpg",
          "phone": "+1234567890",
          "openTime": "Weekdays (9am - 5pm), Weekends (9am - 2pm)"
        },
        {
          "name": "Healthcare Center",
          "location": "Plot 32, Luthuli Rise, Bugolobi, Kampala",
          "speciality": "General Medicine",
          "image": "https://example.com/images/healthcare_center.jpg",
          "phone": "+1234567890",
          "openTime": "Weekdays (9am - 5pm), Weekends (9am - 2pm)"
        },
        {
          "name": "Healthcare Center",
          "location": "Plot 32, Luthuli Rise, Bugolobi, Kampala",
          "speciality": "General Medicine",
          "image": "https://example.com/images/healthcare_center.jpg",
          "phone": "+1234567890",
          "openTime": "Weekdays (9am - 5pm), Weekends (9am - 2pm)"
        }
      ];
      return facilities.map((facility) => Facility.fromJson(facility)).toList();
    });
  }
}
