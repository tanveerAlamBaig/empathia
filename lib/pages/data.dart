import 'package:flutter/material.dart';

class UnboardingContent {
  String image;
  String title;
  String description;
  Color backgroundColor;

  UnboardingContent({
    required this.image,
    required this.title,
    required this.description,
    required this.backgroundColor,
  });
}

List<UnboardingContent> contentsList = [
  UnboardingContent(
      image: "assets/doc1.png",
      title: 'Get Instant Consult From Your Preferred Psychologist',
      description: 'Now you can speak to your preferred psychologist within 1 minute through chat/voice call/video call',
      backgroundColor: Color(0xFF0097A7)),
  UnboardingContent(
      image: "assets/doc2.png",
      title: 'Find Trustworthy Health Information',
      description: 'You will get the most accurate information about any disorder from top-class psychologists. Read top trending articles and share with your friends',
      backgroundColor: Color(0xFF0097A7)),
  UnboardingContent(
      image: "assets/doc3.png",
      title: 'Easy Appointment Scheduling And Fast Payment',
      description: 'You can book appointment from anywhere quickly at your finger tips and get connected',
      backgroundColor: Color(0xFF0097A7)),
  UnboardingContent(
      image: "assets/community.png",
      title: 'Join Community \nAnd Stay Connected',
      description: 'Share you experiences and bring a change within yourself and round our enviornment',
      backgroundColor: Color(0xFF0097A7)),
];


