import 'package:flutter/material.dart';

class PostsPlaceholder extends StatelessWidget {
  const PostsPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const ValueKey('loading-placeholder'),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: _buildPostTilePlaceholder(context),
        );
      },
    );
  }

  Widget _buildPostTilePlaceholder(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRowPlaceholder(context),
          const SizedBox(height: 12),
          _buildBodyPlaceholder(context),
          const SizedBox(height: 8),
          _buildIdContainerPlaceholder(context),
        ],
      ),
    );
  }

  Widget _buildTitleRowPlaceholder(BuildContext context) => Row(
        children: [
          Container(
            width: 20,
            height: 20,
            color: Theme.of(context).cardColor,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 20,
              color: Theme.of(context).cardColor,
            ),
          ),
        ],
      );

  Widget _buildBodyPlaceholder(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16,
            width: double.infinity,
            color: Theme.of(context).cardColor,
          ),
          const SizedBox(height: 6),
          Container(
            height: 16,
            width: double.infinity,
            color: Theme.of(context).cardColor,
          ),
          const SizedBox(height: 6),
          Container(
            height: 16,
            width: 200,
            color: Theme.of(context).cardColor,
          ),
        ],
      );

  Widget _buildIdContainerPlaceholder(BuildContext context) => Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 60,
          height: 24,
          color: Theme.of(context).cardColor,
        ),
      );
}
