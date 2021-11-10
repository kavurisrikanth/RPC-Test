import 'ConnectionStatus.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';

class StringToEnumType {
  static ConnectionStatus stringToConnectionStatus(String str) {
    switch (str) {
      case 'Connecting':
        {
          return ConnectionStatus.Connecting;
        }

      case 'Connected':
        {
          return ConnectionStatus.Connected;
        }

      case 'ConnectionBusy':
        {
          return ConnectionStatus.ConnectionBusy;
        }

      case 'ConnectionNormal':
        {
          return ConnectionStatus.ConnectionNormal;
        }

      case 'ConnectionFailed':
        {
          return ConnectionStatus.ConnectionFailed;
        }

      case 'RestoreFailed':
        {
          return ConnectionStatus.RestoreFailed;
        }

      case 'AuthFailed':
        {
          return ConnectionStatus.AuthFailed;
        }
      default:
        {
          return null;
        }
    }
  }

  static CrossAxisAlignment stringToCrossAxisAlignment(String str) {
    switch (str) {
      case 'start':
        {
          return CrossAxisAlignment.start;
        }

      case 'end':
        {
          return CrossAxisAlignment.end;
        }

      case 'center':
        {
          return CrossAxisAlignment.center;
        }

      case 'stretch':
        {
          return CrossAxisAlignment.stretch;
        }

      case 'baseline':
        {
          return CrossAxisAlignment.baseline;
        }
      default:
        {
          return null;
        }
    }
  }

  static FontStyle stringToFontStyle(String str) {
    switch (str) {
      case 'normal':
        {
          return FontStyle.normal;
        }

      case 'italic':
        {
          return FontStyle.italic;
        }
      default:
        {
          return null;
        }
    }
  }

  static FontWeight stringToFontWeight(String str) {
    switch (str) {
      case 'w100':
        {
          return FontWeight.w100;
        }

      case 'w200':
        {
          return FontWeight.w200;
        }

      case 'w300':
        {
          return FontWeight.w300;
        }

      case 'w400':
        {
          return FontWeight.w400;
        }

      case 'w500':
        {
          return FontWeight.w500;
        }

      case 'w600':
        {
          return FontWeight.w600;
        }

      case 'w700':
        {
          return FontWeight.w700;
        }

      case 'w800':
        {
          return FontWeight.w800;
        }

      case 'w900':
        {
          return FontWeight.w900;
        }

      case 'normal':
        {
          return FontWeight.normal;
        }

      case 'bold':
        {
          return FontWeight.bold;
        }
      default:
        {
          return null;
        }
    }
  }

  static MainAxisAlignment stringToMainAxisAlignment(String str) {
    switch (str) {
      case 'start':
        {
          return MainAxisAlignment.start;
        }

      case 'end':
        {
          return MainAxisAlignment.end;
        }

      case 'center':
        {
          return MainAxisAlignment.center;
        }

      case 'spaceBetween':
        {
          return MainAxisAlignment.spaceBetween;
        }

      case 'spaceAround':
        {
          return MainAxisAlignment.spaceAround;
        }

      case 'spaceEvenly':
        {
          return MainAxisAlignment.spaceEvenly;
        }
      default:
        {
          return null;
        }
    }
  }

  static MainAxisSize stringToMainAxisSize(String str) {
    switch (str) {
      case 'min':
        {
          return MainAxisSize.min;
        }

      case 'max':
        {
          return MainAxisSize.max;
        }
      default:
        {
          return null;
        }
    }
  }

  static TextAlign stringToTextAlign(String str) {
    switch (str) {
      case 'left':
        {
          return TextAlign.left;
        }

      case 'right':
        {
          return TextAlign.right;
        }

      case 'center':
        {
          return TextAlign.center;
        }

      case 'justify':
        {
          return TextAlign.justify;
        }

      case 'start':
        {
          return TextAlign.start;
        }

      case 'end':
        {
          return TextAlign.end;
        }
      default:
        {
          return null;
        }
    }
  }

  static TextBaseline stringToTextBaseline(String str) {
    switch (str) {
      case 'alphabetic':
        {
          return TextBaseline.alphabetic;
        }

      case 'ideographic':
        {
          return TextBaseline.ideographic;
        }
      default:
        {
          return null;
        }
    }
  }

  static TextDecoration stringToTextDecoration(String str) {
    switch (str) {
      case 'none':
        {
          return TextDecoration.none;
        }

      case 'underline':
        {
          return TextDecoration.underline;
        }

      case 'overline':
        {
          return TextDecoration.overline;
        }

      case 'lineThrough':
        {
          return TextDecoration.lineThrough;
        }
      default:
        {
          return null;
        }
    }
  }

  static TextDecorationStyle stringToTextDecorationStyle(String str) {
    switch (str) {
      case 'solid':
        {
          return TextDecorationStyle.solid;
        }

      case 'double':
        {
          return TextDecorationStyle.double;
        }

      case 'dotted':
        {
          return TextDecorationStyle.dotted;
        }

      case 'dashed':
        {
          return TextDecorationStyle.dashed;
        }

      case 'wavy':
        {
          return TextDecorationStyle.wavy;
        }
      default:
        {
          return null;
        }
    }
  }

  static TextDirection stringToTextDirection(String str) {
    switch (str) {
      case 'rtl':
        {
          return TextDirection.rtl;
        }

      case 'ltr':
        {
          return TextDirection.ltr;
        }
      default:
        {
          return null;
        }
    }
  }

  static TextOverflow stringToTextOverflow(String str) {
    switch (str) {
      case 'clip':
        {
          return TextOverflow.clip;
        }

      case 'fade':
        {
          return TextOverflow.fade;
        }

      case 'ellipsis':
        {
          return TextOverflow.ellipsis;
        }

      case 'visible':
        {
          return TextOverflow.visible;
        }
      default:
        {
          return null;
        }
    }
  }

  static VerticalDirection stringToVerticalDirection(String str) {
    switch (str) {
      case 'up':
        {
          return VerticalDirection.up;
        }

      case 'down':
        {
          return VerticalDirection.down;
        }
      default:
        {
          return null;
        }
    }
  }
}
