import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_seo/meta_seo.dart';
import 'first_screen.dart';
import 'second_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          MetaSEO meta = MetaSEO();

          meta.seoOGTitle('First Screen');
          meta.seoDescription('First Screen Description');
          meta.seoKeywords('Page 1, Flutter, Dart, SEO, Meta, Web');
          meta.seoOGImage('https://smash.imgix.net/partners_new/ifood.png');
          meta.seoOGDescription('First Screen OG');
        }

        return const FirstScreen();
      },
    ),
    GoRoute(
      path: '/second_screen',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          MetaSEO meta = MetaSEO();

          meta.seoOGTitle('Second Screen');
          meta.seoDescription('Second Screen Description');
          meta.seoKeywords('Page 2, Flutter, Dart, SEO, Meta, Web');
          meta.seoOGImage('https://smash.imgix.net/partners_new/spotify.png');
          meta.seoOGDescription('Second Screen OG');
        }

        return const SecondScreen();
      },
    ),
  ],
);
