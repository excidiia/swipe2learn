import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';
import 'flashcards_data.dart';
import 'ui_components.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp(
    ChangeNotifierProvider(
      create: (_) => LearningProvider(),
      child: const WissensSwiper(),
    ),
  );
}

class WissensSwiper extends StatelessWidget {
  const WissensSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wissens-Swiper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Provider.of<LearningProvider>(context, listen: false).loadProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
          Provider.of<LearningProvider>(context, listen: false)
              .markCardViewed(index);
        },
        children: List.generate(
          Provider.of<LearningProvider>(context).cards.length,
          (index) => SwipeCard(
            card: Provider.of<LearningProvider>(context).cards[index],
            cardIndex: index,
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.8),
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.
