import 'package:flutter/material.dart';
import '../../../data/models/chararcter_model.dart';

class CharacterCard extends StatelessWidget {
  final CharacterModel character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Character image card with fixed height
        SizedBox(
          height: 80, // Fixed height instead of Expanded
          width: double.infinity,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60), // Make it circular
            ),
            child: Container(
              child: Image.asset(
                character.characterImageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.error, size: 30),
                ),
              ),
            ),
          ),
        ),
        // Character info below the image
        const SizedBox(height: 8),
        Text(
          character.characterName,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          character.characterSeries,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 10,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}