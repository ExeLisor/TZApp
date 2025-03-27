import 'package:flutter/material.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/presentation/widgets/post_tile.dart';

class PostsListWidget extends StatelessWidget {
  const PostsListWidget({super.key, required this.posts});
  final List<Post> posts;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => PostTileWidget(post: posts[index]),
    );
  }
}
