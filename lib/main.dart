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
      home: const CategorySelectionScreen(),
    );
  }
}

class CategorySelectionScreen extends StatefulWidget {
  const CategorySelectionScreen({super.key});

  @override
  State<CategorySelectionScreen> createState() => _CategorySelectionScreenState();
}

class _CategorySelectionScreenState extends State<CategorySelectionScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<LearningProvider>(context, listen: false).loadProgress();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LearningProvider>(context);
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade900,
              Colors.black,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                '🧠 Wissens-Swiper',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '200+ Karteikarten • Spaced Repetition',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(height: 40),
              
              // Stats Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatBadge('🔥', '${provider.streak}', 'Streak'),
                    _buildStatBadge('✅', '${provider.todayCount}', 'Heute'),
                    _buildStatBadge('📚', '${provider.totalReviewed}', 'Gesamt'),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _buildCategoryCard(
                      context,
                      '🎲 Alle gemischt',
                      '${provider.cards.length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                      ),
                      null, // null = alle Kategorien
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '🏥 Medizin',
                      '${provider.getCardsForCategory('Medizin').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFFE74C3C), Color(0xFF8E44AD)],
                      ),
                      'Medizin',
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '🌍 Allgemeinwissen',
                      '${provider.getCardsForCategory('Allgemeinwissen').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFF3498DB), Color(0xFF2980B9)],
                      ),
                      'Allgemeinwissen',
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '📜 Geschichte',
                      '${provider.getCardsForCategory('Geschichte').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFFE67E22), Color(0xFFD35400)],
                      ),
                      'Geschichte',
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '⚛️ Physik',
                      '${provider.getCardsForCategory('Physik').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFF16A085), Color(0xFF1ABC9C)],
                      ),
                      'Physik',
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '🤠 Cowboys',
                      '${provider.getCardsForCategory('Cowboys').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFFD35400), Color(0xFFE67E22)],
                      ),
                      'Cowboys',
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '🎭 Kultur',
                      '${provider.getCardsForCategory('Kultur').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFF9B59B6), Color(0xFF8E44AD)],
                      ),
                      'Kultur',
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '💼 Wirtschaft',
                      '${provider.getCardsForCategory('Wirtschaft').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFF27AE60), Color(0xFF229954)],
                      ),
                      'Wirtschaft',
                    ),
                    const SizedBox(height: 16),
                    _buildCategoryCard(
                      context,
                      '⚙️ Technik',
                      '${provider.getCardsForCategory('Technik').length} Karten',
                      const LinearGradient(
                        colors: [Color(0xFF34495E), Color(0xFF2C3E50)],
                      ),
                      'Technik',
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              
              // Settings Button
              Padding(
                padding: const EdgeInsets.all(20),
                child: OutlinedButton.icon(
                  onPressed: () => _showSettings(context),
                  icon: const Icon(Icons.settings, color: Colors.white70),
                  label: const Text(
                    'Einstellungen',
                    style: TextStyle(color: Colors.white70),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white30),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatBadge(String emoji, String value, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 24)),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryCard(
    BuildContext context,
    String title,
    String subtitle,
    LinearGradient gradient,
    String? category,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CardSwipeScreen(category: category),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  void _showSettings(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => const SettingsSheet(),
    );
  }
}

class CardSwipeScreen extends StatefulWidget {
  final String? category;

  const CardSwipeScreen({super.key, this.category});

  @override
  State<CardSwipeScreen> createState() => _CardSwipeScreenState();
}

class _CardSwipeScreenState extends State<CardSwipeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  late List<FlashCard> _cards;

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<LearningProvider>(context, listen: false);
    
    if (widget.category == null) {
      // Alle Karten gemischt
      _cards = List.from(provider.cards)..shuffle(Random());
    } else {
      // Nur diese Kategorie
      _cards = provider.getCardsForCategory(widget.category!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Cards
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
              Provider.of<LearningProvider>(context, listen: false)
                  .markCardViewed(index);
            },
            itemCount: _cards.length,
            itemBuilder: (context, index) => SwipeCard(
              card: _cards[index],
              cardIndex: index,
            ),
          ),
          
          // Back Button
          Positioned(
            top: 50,
            left: 20,
            child: SafeArea(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          
          // Progress Indicator
          Positioned(
            top: 50,
            right: 20,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${_currentIndex + 1} / ${_cards.length}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SwipeCard extends StatefulWidget {
  final FlashCard card;
  final int cardIndex;

  const SwipeCard({
    super.key,
    required this.card,
    required this.cardIndex,
  });

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard>
    with SingleTickerProviderStateMixin {
  bool _showAnswer = false;
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnswer() {
    setState(() {
      _showAnswer = !_showAnswer;
      if (_showAnswer) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleAnswer,
      child: Container(
        decoration: BoxDecoration(
          gradient: _getGradientForCategory(widget.card.category),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          _getCategoryEmoji(widget.card.category) +
                              ' ' +
                              widget.card.category.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        widget.card.question,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      if (!_showAnswer) ...[
                        const SizedBox(height: 40),
                        const Icon(
                          Icons.touch_app,
                          color: Colors.white70,
                          size: 32,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Tippen für Antwort',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                      if (_showAnswer)
                        FadeTransition(
                          opacity: _fadeAnimation,
                          child: Column(
                            children: [
                              const SizedBox(height: 40),
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  widget.card.answer,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    height: 1.6,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (_showAnswer)
                Positioned(
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildActionButton(
                          Icons.close,
                          'Schwer',
                          Colors.red,
                          () => _rateCard('hard'),
                        ),
                        _buildActionButton(
                          Icons.check,
                          'Gut',
                          Colors.orange,
                          () => _rateCard('medium'),
                        ),
                        _buildActionButton(
                          Icons.done_all,
                          'Leicht',
                          Colors.green,
                          () => _rateCard('easy'),
                        ),
                      ],
                    ),
                  ),
                ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        color: Colors.white60,
                        size: 20,
                      ),
                      const Text(
                        'Nächste Karte',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(
    IconData icon,
    String label,
    Color color,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: color.withOpacity(0.9),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 32),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _rateCard(String difficulty) {
    Provider.of<LearningProvider>(context, listen: false)
        .rateCard(widget.cardIndex, difficulty);
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          difficulty == 'easy'
              ? '✅ Wiederholung in 7 Tagen'
              : difficulty == 'medium'
                  ? '👍 Wiederholung in 3 Tagen'
                  : '📚 Wiederholung morgen',
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.black87,
      ),
    );

    setState(() {
      _showAnswer = false;
      _controller.reverse();
    });
  }

  LinearGradient _getGradientForCategory(String category) {
    switch (category.toLowerCase()) {
      case 'medizin':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFE74C3C), Color(0xFF8E44AD)],
        );
      case 'allgemeinwissen':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF3498DB), Color(0xFF2980B9)],
        );
      case 'geschichte':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFE67E22), Color(0xFFD35400)],
        );
      case 'physik':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF16A085), Color(0xFF1ABC9C)],
        );
      case 'cowboys':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD35400), Color(0xFFE67E22)],
        );
      case 'kultur':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF9B59B6), Color(0xFF8E44AD)],
        );
      case 'wirtschaft':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF27AE60), Color(0xFF229954)],
        );
      case 'technik':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF34495E), Color(0xFF2C3E50)],
        );
      default:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
        );
    }
  }

  String _getCategoryEmoji(String category) {
    switch (category.toLowerCase()) {
      case 'medizin':
        return '🏥';
      case 'allgemeinwissen':
        return '🌍';
      case 'geschichte':
        return '📜';
      case 'physik':
        return '⚛️';
      case 'cowboys':
        return '🤠';
      case 'kultur':
        return '🎭';
      case 'wirtschaft':
        return '💼';
      case 'technik':
        return '⚙️';
      default:
        return '📚';
    }
  }
}

class FlashCard {
  final String category;
  final String question;
  final String answer;
  final String? difficulty;
  final List<String>? tags;

  FlashCard({
    required this.category,
    required this.question,
    required this.answer,
    this.difficulty,
    this.tags,
  });
}

class LearningProvider extends ChangeNotifier {
  List<FlashCard> _cards = [];
  Map<int, CardProgress> _progress = {};
  int _streak = 0;
  int _totalReviewed = 0;
  int _todayCount = 0;
  DateTime? _lastReviewDate;

  List<FlashCard> get cards => _cards;
  int get streak => _streak;
  int get totalReviewed => _totalReviewed;
  int get todayCount => _todayCount;

  LearningProvider() {
    _initializeCards();
  }

  void _initializeCards() {
    _cards = _generateAllCards();
  }

  List<FlashCard> getCardsForCategory(String category) {
    return _cards.where((card) => 
      card.category.toLowerCase() == category.toLowerCase()
    ).toList();
  }

  Future<void> loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    _streak = prefs.getInt('streak') ?? 0;
    _totalReviewed = prefs.getInt('totalReviewed') ?? 0;
    _todayCount = prefs.getInt('todayCount') ?? 0;
    
    final lastDate = prefs.getString('lastReviewDate');
    if (lastDate != null) {
      _lastReviewDate = DateTime.parse(lastDate);
      _updateStreakIfNeeded();
    }
    
    notifyListeners();
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('streak', _streak);
    await prefs.setInt('totalReviewed', _totalReviewed);
    await prefs.setInt('todayCount', _todayCount);
    if (_lastReviewDate != null) {
      await prefs.setString('lastReviewDate', _lastReviewDate!.toIso8601String());
    }
  }

  void _updateStreakIfNeeded() {
    if (_lastReviewDate == null) return;
    
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastDay = DateTime(
      _lastReviewDate!.year,
      _lastReviewDate!.month,
      _lastReviewDate!.day,
    );
    
    if (today.difference(lastDay).inDays > 1) {
      _streak = 0;
    }
    
    if (today.difference(lastDay).inDays >= 1) {
      _todayCount = 0;
    }
  }

  void markCardViewed(int index) {
    // Just tracking views
  }

  void rateCard(int index, String difficulty) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    
    if (_lastReviewDate == null ||
        today.difference(DateTime(
          _lastReviewDate!.year,
          _lastReviewDate!.month,
          _lastReviewDate!.day,
        )).inDays >= 1) {
      _streak++;
    }
    
    _lastReviewDate = now;
    _todayCount++;
    _totalReviewed++;
    
    _saveProgress();
    notifyListeners();
  }

  Future<void> resetProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    _streak = 0;
    _totalReviewed = 0;
    _todayCount = 0;
    _lastReviewDate = null;
    _progress.clear();
    notifyListeners();
  }

  List<FlashCard> _generateAllCards() {
    return [
      ...medizinCards,
      ...allgemeinwissenCards,
      ...geschichteCards,
      ...physikCards,
      ...cowboysCards,
      ...kulturCards,
      ...wirtschaftCards,
      ...technikCards,
    ];
  }
}

class CardProgress {
  DateTime nextReview;
  int interval;
  double easeFactor;
  int reviewCount;

  CardProgress({
    required this.nextReview,
    this.interval = 1,
    this.easeFactor = 2.5,
    this.reviewCount = 0,
  });
}
