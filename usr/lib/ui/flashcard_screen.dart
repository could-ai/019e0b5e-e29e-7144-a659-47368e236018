import 'package:flutter/material.dart';
import '../models/flashcard.dart';

class FlashcardScreen extends StatefulWidget {
  final String categoryName;
  final List<Flashcard> flashcards;

  const FlashcardScreen({
    super.key,
    required this.categoryName,
    required this.flashcards,
  });

  @override
  State<FlashcardScreen> createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  int _currentIndex = 0;
  bool _showAnswer = false;

  void _nextCard() {
    setState(() {
      _showAnswer = false;
      _currentIndex = (_currentIndex + 1) % widget.flashcards.length;
    });
  }

  void _previousCard() {
    setState(() {
      _showAnswer = false;
      _currentIndex = (_currentIndex - 1 + widget.flashcards.length) %
          widget.flashcards.length;
    });
  }

  void _toggleCard() {
    setState(() {
      _showAnswer = !_showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.flashcards.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.categoryName)),
        body: const Center(child: Text('No flashcards available.')),
      );
    }

    final card = widget.flashcards[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double cardWidth = constraints.maxWidth > 600 ? 500 : constraints.maxWidth * 0.9;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Card ${_currentIndex + 1} of ${widget.flashcards.length}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: _toggleCard,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: cardWidth,
                      height: 300,
                      decoration: BoxDecoration(
                        color: _showAnswer
                            ? Theme.of(context).colorScheme.secondaryContainer
                            : Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          )
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _showAnswer ? card.translation : card.koreanText,
                                style: TextStyle(
                                  fontSize: _showAnswer ? 28 : 48,
                                  fontWeight: FontWeight.bold,
                                  color: _showAnswer
                                      ? Theme.of(context).colorScheme.onSecondaryContainer
                                      : Theme.of(context).colorScheme.onPrimaryContainer,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              if (!_showAnswer && card.pronunciation != null) ...[
                                const SizedBox(height: 16),
                                Text(
                                  card.pronunciation!,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7),
                                  ),
                                ),
                              ],
                              if (_showAnswer && card.notes != null) ...[
                                const SizedBox(height: 16),
                                Text(
                                  card.notes!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    color: Theme.of(context).colorScheme.onSecondaryContainer.withOpacity(0.8),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ]
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _previousCard,
                        icon: const Icon(Icons.arrow_back_ios),
                        tooltip: 'Previous',
                      ),
                      const SizedBox(width: 32),
                      ElevatedButton(
                        onPressed: _toggleCard,
                        child: Text(_showAnswer ? 'Hide Answer' : 'Show Answer'),
                      ),
                      const SizedBox(width: 32),
                      IconButton(
                        onPressed: _nextCard,
                        icon: const Icon(Icons.arrow_forward_ios),
                        tooltip: 'Next',
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
