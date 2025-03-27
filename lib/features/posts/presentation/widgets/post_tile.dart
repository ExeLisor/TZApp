import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tzapp/core/routes/app_router.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';

class PostTileWidget extends StatelessWidget {
  const PostTileWidget({
    super.key,
    required this.post,
    this.onTap,
  });

  final Post post;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.router.push(PostDetailRoute(postId: post.id)),
        child: Container(
          decoration: PostTileDecorations.containerDecoration(context),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleRow(context),
              const SizedBox(height: 12),
              _body(context),
              const SizedBox(height: 8),
              _idContainer(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleRow(BuildContext context) => Row(
        children: [
          _icon(context),
          const SizedBox(width: 8),
          _title(context),
        ],
      );

  Widget _title(context) => Expanded(
        child: Text(
          post.title,
          style: PostTileStyles.titleStyle(context),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      );

  Widget _icon(context) => Icon(
        Icons.article_outlined,
        color: Theme.of(context).colorScheme.primary,
        size: 20,
      );

  Widget _body(context) => Text(
        post.body,
        style: PostTileStyles.bodyStyle(context),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      );

  Widget _idContainer(context) => Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: PostTileDecorations.idDecoration(context),
          child: Text(
            'ID: ${post.id}',
            style: PostTileStyles.idStyle(context),
          ),
        ),
      );
}

class PostTileStyles {
  static TextStyle titleStyle(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ) ??
      const TextStyle();

  static TextStyle bodyStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
          ) ??
      const TextStyle();

  static TextStyle idStyle(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ) ??
      const TextStyle();
}

class PostTileDecorations {
  static const EdgeInsets padding =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);

  static const EdgeInsets contentPadding = EdgeInsets.all(16);

  static const double borderRadius = 12;
  static const double iconSize = 20;
  static const double shadowBlurRadius = 6;
  static const Offset shadowOffset = Offset(0, 2);
  static const double shadowOpacity = 0.1;

  static BoxDecoration containerDecoration(BuildContext context) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Theme.of(context).colorScheme.surfaceVariant,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(shadowOpacity),
            blurRadius: shadowBlurRadius,
            offset: shadowOffset,
          ),
        ],
      );

  static BoxDecoration idDecoration(BuildContext context) => BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      );

  static const EdgeInsets idPadding =
      EdgeInsets.symmetric(horizontal: 8, vertical: 4);
}
