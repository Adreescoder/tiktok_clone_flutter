import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok_clone/config/theme/app_theme.dart';
import 'package:tik_tok_clone/data/datasources/video_posts_local.dart';
import 'package:tik_tok_clone/data/repositories/video_posts_repository.dart';
import 'package:tik_tok_clone/presentation/providers/discover_provider.dart';
import 'package:tik_tok_clone/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final datasource = VideoPostsDatasourceImpl();
    final repository = VideoPostsRepositoryImpl(datasource: datasource);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => DiscoverProvider(videoPostsRepository: repository)
              ..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TikTok Clone',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
