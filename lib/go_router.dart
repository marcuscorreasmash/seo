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

          meta.description(description: 'First Screen Description');
          meta.keywords(keywords: 'Page 1, Flutter, Dart, SEO, Meta, Web');

          meta.ogImage(
              ogImage: 'https://smash.imgix.net/partners_new/ifood.png');
          meta.ogDescription(ogDescription: 'First Screen OG');
          meta.ogTitle(ogTitle: 'First Screen');

          meta.twitterDescription(twitterDescription: 'First Screen OG');
          meta.twitterImage(
              twitterImage: 'https://smash.imgix.net/partners_new/ifood.png');
          meta.twitterTitle(twitterTitle: 'First Screen');
        }

        return const FirstScreen();
      },
    ),
    GoRoute(
      path: '/second_screen',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          MetaSEO meta = MetaSEO();

          meta.description(description: 'Second Screen Description');
          meta.keywords(keywords: 'Page 2, Flutter, Dart, SEO, Meta, Web');

          meta.ogImage(
              ogImage: 'https://smash.imgix.net/partners_new/ifood.png');
          meta.ogDescription(ogDescription: 'Second Screen OG');
          meta.ogTitle(ogTitle: 'Second Screen');

          meta.twitterDescription(twitterDescription: 'Second Screen OG');
          meta.twitterImage(
              twitterImage: 'https://smash.imgix.net/partners_new/ifood.png');
          meta.twitterTitle(twitterTitle: 'Second Screen');
        }

        return const SecondScreen();
      },
    ),
  ],
);
