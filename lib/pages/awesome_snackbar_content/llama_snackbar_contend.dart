// Metodo de tipó SnackBar

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

SnackBar snackBarMessage(
    {String title = 'titulo',
    String message = 'Mensaje',
    required ContentType color}) {
  return SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message: message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      /// Red
      // contentType:ContentType.failure,
      //  blue
      // contentType:ContentType.help,
      // Green
      // contentType:ContentType.success,
      // Orange
      contentType: color,
    ),
  );
}

MaterialBanner messageBannerTop(
    {String title = 'titulo',
    String message = 'Mensaje',
    required ContentType color}) {
  return MaterialBanner(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    backgroundColor: Colors.transparent,
    forceActionsBelow: true,
    content: AwesomeSnackbarContent(
      title: title,
      message: message,      
      contentType: color,
      // to configure for material banner
      inMaterialBanner: true,
    ),
    actions: const [SizedBox.shrink()],
  );
}
