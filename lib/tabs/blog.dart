// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/pages/blog_details.dart';
import 'package:frontend/util/blog_tile.dart';

class Blog extends StatelessWidget {
  // List of blogs
  List<Map<String, dynamic>> blogs = [
    {
      "blogTitle": "Breaking the Silence: Understanding and Overcoming Anxiety",
      "blogAuthor": "Dr. Alisson Aparo",
      "blogContent":
          "Anxiety affects millions globally yet remains stigmatized. In this blog, we explore its complexities and ways to overcome it. Anxiety isn't merely feeling stressed or worried; it's an overwhelming fear and apprehension that can interfere with daily life. Understanding its triggers and underlying causes is crucial in managing it effectively.\n\nOpen dialogue about anxiety fosters understanding and support, crucial for those battling it. Society often dismisses mental health issues, labeling them as weaknesses. However, breaking the silence and speaking openly about our struggles can be incredibly liberating. It fosters understanding, empathy, and creates a supportive environment for those battling anxiety.\n\nTherapy, medication, and self-care practices like mindfulness and exercise can help manage symptoms. While there's no one-size-fits-all solution for anxiety, finding what works best for you and seeking professional help if needed is essential. Together, let's break the silence surrounding anxiety and empower each other to conquer it.",
      "blogDate": "2024-06-01",
    },
    {
      "blogTitle": "Understanding Depression: Shedding Light on the Darkness",
      "blogAuthor": "Dr. Jane Smith",
      "blogContent":
          "Depression is a prevalent but often misunderstood mental health condition. In this blog, we delve into the depths of depression, shedding light on its causes, symptoms, and treatments. Depression isn't simply feeling sad; it's a persistent feeling of emptiness and hopelessness that can impact every aspect of life.\n\nSociety's stigma surrounding depression can make it challenging for individuals to seek help. However, understanding that depression is a legitimate medical condition is the first step towards recovery. Through therapy, medication, and support from loved ones, individuals can learn to manage their symptoms and regain control of their lives.\n\nIt's essential to prioritize self-care and seek professional help if you're struggling with depression. Remember, you're not alone in this journey. Together, let's break the stigma surrounding depression and create a supportive environment where everyone feels comfortable seeking help.",
      "blogDate": "2024-06-02",
    },
    {
      "blogTitle": "Coping with Stress: Strategies for a Balanced Mind",
      "blogAuthor": "Jeremy Ssebakijje",
      "blogContent":
          "Stress is an inevitable part of life, but it doesn't have to overpower us. In this blog, we explore practical strategies for coping with stress and maintaining a balanced mind. From mindfulness techniques to time management strategies, there are various ways to effectively manage stress and prevent it from negatively impacting our mental health.\n\nOne of the most effective ways to cope with stress is by practicing mindfulness. Mindfulness involves being present in the moment and cultivating awareness of our thoughts and feelings without judgment. By practicing mindfulness regularly, we can train our minds to respond to stress in a more calm and centered manner.\n\nAdditionally, it's essential to prioritize self-care and establish healthy boundaries in our lives. This may involve setting aside time for relaxation, engaging in activities that bring us joy, and learning to say no to commitments that overwhelm us. By taking care of ourselves physically, emotionally, and mentally, we can build resilience to stress and live happier, more fulfilling lives.",
      "blogDate": "2024-06-03",
    },
    {
      "blogTitle":
          "The Power of Self-Compassion: Embracing Kindness Towards Ourselves",
      "blogAuthor": "The Mind Society",
      "blogContent":
          "Self-compassion is a fundamental aspect of mental well-being, yet it's often overlooked in our fast-paced society. In this blog, we explore the power of self-compassion and how it can transform our relationship with ourselves and others. Self-compassion involves treating ourselves with kindness, understanding, and acceptance, especially during times of struggle or failure.\n\nResearch has shown that practicing self-compassion can lead to greater resilience, happiness, and overall well-being. Instead of harsh self-criticism, self-compassionate individuals respond to their own suffering with warmth and understanding, which can help alleviate feelings of shame and inadequacy.\n\nCultivating self-compassion requires practice and patience, but the benefits are well worth the effort. By nurturing a compassionate inner voice and learning to be gentle with ourselves, we can foster a greater sense of self-worth and compassion towards others. Let's embrace the power of self-compassion and create a world where kindness begins with ourselves.",
      "blogDate": "2024-06-04",
    },
    {
      "blogTitle":
          "Navigating Relationships: Maintaining Mental Health in Interpersonal Dynamics",
      "blogAuthor": "Dr. Rosette Nandujja",
      "blogContent":
          "Relationships play a significant role in our mental health and well-being, but they can also be a source of stress and conflict. In this blog, we explore strategies for navigating relationships while prioritizing our mental health. Whether it's with romantic partners, family members, friends, or colleagues, healthy relationships are built on mutual respect, communication, and understanding.\n\nOne of the most important aspects of maintaining mental health in relationships is setting boundaries. Boundaries help define what is acceptable and unacceptable behavior, allowing us to protect our emotional and physical well-being. Communicating our boundaries clearly and assertively is essential for fostering healthy relationships and preserving our mental health.\n\nAdditionally, practicing active listening and empathy can enhance the quality of our relationships and contribute to greater emotional intimacy. By validating each other's experiences and perspectives, we can strengthen our connections and build trust. Let's prioritize our mental health in all our relationships and create fulfilling connections that nurture our well-being.",
      "blogDate": "2024-06-05",
    },
    {
      "blogTitle":
          "Mindfulness Meditation: Cultivating Presence for Mental Well-Being",
      "blogAuthor": "Dr. Kiyan Anthony",
      "blogContent":
          "Mindfulness meditation is a powerful practice for cultivating presence and enhancing mental well-being. In this blog, we explore the benefits of mindfulness meditation and how it can positively impact our lives. Mindfulness involves paying attention to the present moment with openness, curiosity, and acceptance, without judgment.\n\nResearch has shown that regular mindfulness meditation practice can reduce stress, anxiety, and depression while improving focus, emotional regulation, and overall resilience. By training our minds to be more present and aware, we can cultivate a greater sense of peace, clarity, and equanimity in our lives.\n\nGetting started with mindfulness meditation doesn't require any special equipment or expertise. Simply find a quiet space, sit comfortably, and bring your attention to your breath or a chosen anchor point. Whenever your mind wanders, gently bring it back to the present moment without judgment. With consistent practice, mindfulness meditation can become a valuable tool for enhancing mental well-being and living more fully.",
      "blogDate": "2024-06-06",
    },
    {
      "blogTitle":
          "Breaking the Stigma: Addressing Mental Health in the Workplace",
      "blogAuthor": "Mental Health Uganda",
      "blogContent":
          "Mental health is an integral part of overall well-being, yet it's often overlooked in the workplace. In this blog, we discuss the importance of addressing mental health in the workplace and strategies for creating a supportive and inclusive environment. From promoting work-life balance to offering mental health resources and support, there are various ways employers can prioritize employee mental health.\n\nBreaking the stigma surrounding mental health starts with open and honest communication. Encouraging conversations about mental health, providing education and training on mental health awareness, and fostering a culture of acceptance and support can help reduce stigma and encourage employees to seek help when needed.\n\nAdditionally, implementing policies and practices that promote mental well-being, such as flexible work arrangements, access to mental health services, and employee assistance programs, can have a positive impact on employee morale, productivity, and retention. By prioritizing mental health in the workplace, employers can create a healthier, happier, and more productive workforce.",
      "blogDate": "2024-06-07",
    },
  ];

  Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF),
      body: ListView.builder(
          itemCount: blogs.length,
          itemBuilder: (context, index) {
            final blog = blogs[index];
            return GestureDetector(
              // method that navigates to blog details screen
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlogDetails(
                      blogTitle: blog['blogTitle'],
                      blogAuthor: blog['blogAuthor'],
                      blogDate: blog['blogDate'],
                      blogContent: blog['blogContent'],
                    ),
                  ),
                );
              },
              child: BlogTile(
                  blogTitle: blog['blogTitle'],
                  blogAuthor: blog['blogAuthor'],
                  blogDate: blog['blogDate']),
            );
          }),
    );
  }
}
