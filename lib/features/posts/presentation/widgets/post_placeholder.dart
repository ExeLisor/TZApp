import 'package:flutter/material.dart';

class PostPlaceholder extends StatelessWidget {
  const PostPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _title(context),
          const SizedBox(height: 16),
          _body(context),
          const SizedBox(height: 24),
          _data(context)
        ],
      ),
    );
  }

  Widget _title(context) => Container(
        width: double.infinity,
        height: 28,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(4),
        ),
      );

  Widget _body(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 16,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 16,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 16,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      );

  Widget _data(context) => Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 80,
              height: 16,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const Spacer(),
            Container(
              width: 60,
              height: 16,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
      );
}
