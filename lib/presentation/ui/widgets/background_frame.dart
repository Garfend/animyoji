import 'dart:math';
import 'dart:ui';

import 'package:animyoji/gen/assets.gen.dart';
import 'package:flutter/material.dart';

/// A reusable gradient frame with floating star accents for page backgrounds.
class BackgroundFrame extends StatelessWidget {
  const BackgroundFrame({
    required this.child,
    super.key,
  });

  /// The content that should appear above the branded background.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double referenceSide = max(screenSize.width, screenSize.height);
    final double largeStarDiameter = referenceSide * 0.33;
    final double smallStarDiameter = referenceSide * 0.22;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE4E5FF),
            Color(0xFFF2F3FF),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -largeStarDiameter * 0.32,
            left: -largeStarDiameter * 0.28,
            child: _StarAccent(
              diameter: largeStarDiameter,
              color: const Color(0xFFCED2FF),
            ),
          ),
          Positioned(
            bottom: -smallStarDiameter * 0.01,
            right: -smallStarDiameter * 0.22,
            child: _StarAccent(
              diameter: smallStarDiameter,
              color: const Color(0xFFDADDFC),
            ),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}

/// A dark themed background frame with blurred circle accents for details pages.
class DarkBackgroundFrame extends StatelessWidget {
  const DarkBackgroundFrame({
    required this.child,
    super.key,
  });

  /// The content that should appear above the dark background.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double referenceSide = max(screenSize.width, screenSize.height);
    final double largeCircleDiameter = referenceSide * 0.45;
    final double mediumCircleDiameter = referenceSide * 0.32;
    final double smallCircleDiameter = referenceSide * 0.28;

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF2C1E51), // Dark purple background
      ),
      child: Stack(
        children: [
          // Large blurred circle - top left
          Positioned(
            top: -largeCircleDiameter * 0.4,
            left: -largeCircleDiameter * 0.3,
            child: _BlurredCircle(
              diameter: largeCircleDiameter,
              color: const Color(0xFF5A3D57),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.15,
            right: -mediumCircleDiameter * 0.25,
            child: _BlurredCircle(
              diameter: mediumCircleDiameter,
              color: const Color(0xFF5A3D57),
            ),
          ),
          Positioned(
            bottom: screenSize.height * 0.2,
            left: -smallCircleDiameter * 0.4,
            child: _BlurredCircle(
              diameter: smallCircleDiameter,
              color: const Color(0xFF5A3D57),
            ),
          ),
          Positioned(
            bottom: -mediumCircleDiameter * 0.3,
            right: -mediumCircleDiameter * 0.2,
            child: _BlurredCircle(
              diameter: mediumCircleDiameter,
              color: const Color(0xFF5A3D57),
            ),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}

class _StarAccent extends StatelessWidget {
  const _StarAccent({
    required this.diameter,
    required this.color,
  });

  final double diameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: diameter,
      height: diameter,
      child: Assets.images.star.image(
        fit: BoxFit.contain,
        color: color,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}

class _BlurredCircle extends StatelessWidget {
  const _BlurredCircle({
    required this.diameter,
    required this.color,
  });

  final double diameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: diameter,
      height: diameter,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withOpacity(0.3),
            ),
          ),
        ),
      ),
    );
  }
}
