import 'package:flutter/material.dart';
import '../models/learning_category.dart';
import '../models/flashcard.dart';

class MockData {
  static const List<LearningCategory> categories = [
    LearningCategory(
      id: 'hangul_basics',
      title: 'Hangul Basics',
      description: 'Learn the Korean alphabet',
      icon: Icons.sort_by_alpha,
      color: Colors.blue,
    ),
    LearningCategory(
      id: 'greetings',
      title: 'Greetings & Basics',
      description: 'Essential phrases for daily life',
      icon: Icons.waving_hand,
      color: Colors.orange,
    ),
    LearningCategory(
      id: 'numbers_sino',
      title: 'Numbers (Sino-Korean)',
      description: 'Dates, money, and phone numbers',
      icon: Icons.numbers,
      color: Colors.green,
    ),
    LearningCategory(
      id: 'food',
      title: 'Food & Dining',
      description: 'Order food like a local',
      icon: Icons.restaurant,
      color: Colors.redAccent,
    ),
  ];

  static const List<Flashcard> flashcards = [
    // Hangul Basics
    Flashcard(
      id: 'h1',
      categoryId: 'hangul_basics',
      korean: '아',
      romanization: 'a',
      english: 'a (as in father)',
    ),
    Flashcard(
      id: 'h2',
      categoryId: 'hangul_basics',
      korean: '어',
      romanization: 'eo',
      english: 'eo (as in run)',
    ),
    Flashcard(
      id: 'h3',
      categoryId: 'hangul_basics',
      korean: '오',
      romanization: 'o',
      english: 'o (as in open)',
    ),
    Flashcard(
      id: 'h4',
      categoryId: 'hangul_basics',
      korean: '우',
      romanization: 'u',
      english: 'u (as in pool)',
    ),
    Flashcard(
      id: 'h5',
      categoryId: 'hangul_basics',
      korean: '가',
      romanization: 'ga',
      english: 'g + a',
    ),
    
    // Greetings
    Flashcard(
      id: 'g1',
      categoryId: 'greetings',
      korean: '안녕하세요',
      romanization: 'annyeonghaseyo',
      english: 'Hello',
      notes: 'Formal/Polite greeting',
    ),
    Flashcard(
      id: 'g2',
      categoryId: 'greetings',
      korean: '감사합니다',
      romanization: 'gamsahamnida',
      english: 'Thank you',
      notes: 'Formal',
    ),
    Flashcard(
      id: 'g3',
      categoryId: 'greetings',
      korean: '죄송합니다',
      romanization: 'joesonghamnida',
      english: 'I am sorry',
    ),
    Flashcard(
      id: 'g4',
      categoryId: 'greetings',
      korean: '네',
      romanization: 'ne',
      english: 'Yes',
    ),
    Flashcard(
      id: 'g5',
      categoryId: 'greetings',
      korean: '아니요',
      romanization: 'aniyo',
      english: 'No',
    ),

    // Numbers (Sino)
    Flashcard(
      id: 'n1',
      categoryId: 'numbers_sino',
      korean: '일',
      romanization: 'il',
      english: 'One (1)',
    ),
    Flashcard(
      id: 'n2',
      categoryId: 'numbers_sino',
      korean: '이',
      romanization: 'i',
      english: 'Two (2)',
    ),
    Flashcard(
      id: 'n3',
      categoryId: 'numbers_sino',
      korean: '삼',
      romanization: 'sam',
      english: 'Three (3)',
    ),

    // Food
    Flashcard(
      id: 'f1',
      categoryId: 'food',
      korean: '물',
      romanization: 'mul',
      english: 'Water',
    ),
    Flashcard(
      id: 'f2',
      categoryId: 'food',
      korean: '밥',
      romanization: 'bap',
      english: 'Rice / Meal',
    ),
    Flashcard(
      id: 'f3',
      categoryId: 'food',
      korean: '맛있어요',
      romanization: 'masisseoyo',
      english: 'It is delicious',
    ),
  ];
}
