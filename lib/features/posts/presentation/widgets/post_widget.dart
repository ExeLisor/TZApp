import 'package:flutter/material.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 300),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colors.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              post.body,
              style: theme.textTheme.bodyLarge?.copyWith(
                height: 1.6,
                color: colors.onSurface.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colors.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.person, color: colors.primary),
                  const SizedBox(width: 12),
                  Text(
                    'User ID: ${post.userId}',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  Text(
                    'Post ID: ${post.id}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
