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
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    title: 'Hello',
    styles: [
      // Special import rule to include to another css file.
      css.import(
          'https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap'),
      // Each style rule takes a valid css selector and a set of styles.
      // Styles are defined using type-safe css bindings and can be freely chained and nested.
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
