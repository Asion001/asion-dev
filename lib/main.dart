// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:asion_dev/constants/theme.dart';
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  const name = 'Asion\'s website';
  const description = 'Info about me (or not)';

  runApp(Document(
    title: 'Hello',
    lang: 'en',
    meta: {'name': name, 'description': description},
    head: [
      // Open Graph tags
      meta(
        attributes: {'property': 'og:title'},
        content: name,
      ),
      meta(
        attributes: {'property': 'og:description'},
        content: description,
      ),
      meta(
        attributes: {'property': 'og:url'},
        content: 'https://asion.dev',
      ),
      meta(
        attributes: {'property': 'og:type'},
        content: 'website',
      ),

      // Twitter Card tags
      meta(
        attributes: {'name': 'twitter:title'},
        content: name,
      ),
      meta(
        attributes: {'name': 'twitter:description'},
        content: description,
      ),

      // Preconnect for fonts
      link(href: 'https://fonts.googleapis.com', rel: 'preconnect'),
      link(
        href: 'https://fonts.gstatic.com',
        attributes: {'crossorigin': ''},
        rel: 'preconnect',
      ),

      // Preload the Oswald font stylesheet and switch to stylesheet on load
      link(
        href: 'https://fonts.googleapis.com/css2?family=Oswald&display=swap',
        rel: 'preload',
        attributes: {
          'as': 'style',
          'onload': "this.onload=null;this.rel='stylesheet'"
        },
      ),
      // Fallback for users with JavaScript disabled
      DomComponent(
        tag: 'noscript',
        child: link(
          href: 'https://fonts.googleapis.com/css2?family=Oswald&display=swap',
          rel: 'stylesheet',
        ),
      ),
    ],
    styles: [
      css('html, body').styles(
        width: 100.percent,
        minHeight: 100.vh,
        padding: Padding.zero,
        margin: Margin.zero,
        color: primaryColor,
        fontFamily: const FontFamily.list([
          FontFamily('Oswald'),
          FontFamilies.sansSerif,
        ]),
        backgroundColor: backgroudColor,
      ),
      css('h1').styles(
        margin: Margin.all(5.pt),
        textAlign: TextAlign.center,
        fontSize: 4.rem,
      ),
      css('h2').styles(
        margin: Margin.all(2.pt),
        fontSize: 1.rem,
      ),
    ],
    body: App(),
  ));
}
