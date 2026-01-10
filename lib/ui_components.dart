import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class StatsSheet extends StatelessWidget {
  const StatsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LearningProvider>(context);
    
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '📊 Deine Statistiken',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  '🔥',
                  '${provider.streak}',
                  'Tage Streak',
                  Colors.orange,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildStatCard(
                  '✅',
                  '${provider.todayCount}',
                  'Heute gelernt',
                  Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  '📚',
                  '${provider.totalReviewed}',
                  'Gesamt',
                  Colors.blue,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildStatCard(
                  '🎯',
                  '${provider.cards.length}',
                  'Karten total',
                  Colors.purple,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple.shade700, Colors.blue.shade700],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.lightbulb, color: Colors.white, size: 32),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Komm täglich vorbei, um deinen Streak aufzubauen! 🚀',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildStatCard(String emoji, String value, String label, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.5), width: 2),
      ),
      child: Column(
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class CategorySheet extends StatelessWidget {
  const CategorySheet({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LearningProvider>(context);
    final categories = _getCategoryCounts(provider.cards);
    
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '📂 Kategorien',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ...categories.entries.map((entry) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _buildCategoryTile(
                _getCategoryEmoji(entry.key),
                entry.key,
                entry.value,
                _getCategoryColor(entry.key),
              ),
            );
          }).toList(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildCategoryTile(String emoji, String name, int count, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.3), color.withOpacity(0.1)],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.5), width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(emoji, style: const TextStyle(fontSize: 24)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$count Karten',
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white60, size: 16),
        ],
      ),
    );
  }

  Map<String, int> _getCategoryCounts(List<FlashCard> cards) {
    final counts = <String, int>{};
    for (final card in cards) {
      counts[card.category] = (counts[card.category] ?? 0) + 1;
    }
    return counts;
  }

  String _getCategoryEmoji(String category) {
    switch (category.toLowerCase()) {
      case 'medizin': return '🏥';
      case 'allgemeinwissen': return '🌍';
      case 'geschichte': return '📜';
      case 'physik': return '⚛️';
      case 'cowboys': return '🤠';
      case 'kultur': return '🎭';
      case 'wirtschaft': return '💼';
      case 'technik': return '⚙️';
      default: return '📚';
    }
  }

  Color _getCategoryColor(String category) {
    switch (category.toLowerCase()) {
      case 'medizin': return Colors.red;
      case 'allgemeinwissen': return Colors.blue;
      case 'geschichte': return Colors.orange;
      case 'physik': return Colors.teal;
      case 'cowboys': return Colors.brown;
      case 'kultur': return Colors.purple;
      case 'wirtschaft': return Colors.green;
      case 'technik': return Colors.blueGrey;
      default: return Colors.grey;
    }
  }
}

class SettingsSheet extends StatelessWidget {
  const SettingsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '⚙️ Einstellungen',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          _buildSettingTile(
            Icons.shuffle,
            'Karten mischen',
            'Zufällige Reihenfolge',
            () {},
          ),
          _buildSettingTile(
            Icons.refresh,
            'Fortschritt zurücksetzen',
            'Alle Statistiken löschen',
            () => _showResetDialog(context),
          ),
          _buildSettingTile(
            Icons.info_outline,
            'Über die App',
            'Version 1.0.0',
            () => _showAboutDialog(context),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade900.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.tips_and_updates, color: Colors.blue, size: 24),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Tipp: Swipe nach oben für die nächste Karte!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSettingTile(
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.white60, fontSize: 12),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white30, size: 16),
      onTap: onTap,
    );
  }

  void _showResetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'Fortschritt zurücksetzen?',
          style: TextStyle(color: Colors.white),
        ),
        content: const Text(
          'Alle deine Statistiken werden gelöscht. Dies kann nicht rückgängig gemacht werden!',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Abbrechen'),
          ),
          TextButton(
            onPressed: () {
              Provider.of<LearningProvider>(context, listen: false).resetProgress();
              Navigator.pop(context);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Fortschritt wurde zurückgesetzt')),
              );
            },
            child: const Text('Zurücksetzen', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'Über Wissens-Swiper',
          style: TextStyle(color: Colors.white),
        ),
        content: const Text(
          'Eine TikTok-style Lern-App mit Spaced Repetition System.\n\n'
          '📚 200+ Karteikarten\n'
          '🧠 Wissenschaftlich fundiert\n'
          '📱 Komplett offline\n\n'
          'Version 1.0.0\n'
          '© 2024',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Schließen'),
          ),
        ],
      ),
    );
  }
}
