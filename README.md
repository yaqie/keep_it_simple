<a href="https://saweria.co/yaqie" target="_blank"><img src="https://saweria.co/twitter_card.png"></a>

<a href="https://www.buymeacoffee.com/yaqie" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

# Keep It Simple

This package is made with all my heart. made based on personal experience that I use to make my projects much simpler. I hope this package can make my work easier and that of all my friends.

## Features

- add space for width and height (AddWidth / AddHeight)
- radius for corner (Corner)

## Usage AddWidth / AddHeight

This widget is used to increase the width or height distance

```javascript
import 'package:keep_it_simple/keep_it_simple.dart';
// or
import 'package:keep_it_simple/components/add_space.dart';

const AddWidth(20),
const AddHeight(20),
```

## Usage Corner

This widget is used to make the corners of the widget to be curved as a whole

```javascript
import 'package:keep_it_simple/keep_it_simple.dart';
// or
import 'package:keep_it_simple/components/corner.dart';

Corner(
  corner: 30,
  child: Container(
    color: Colors.red,
    width: 100,
    height: 100,
  ),
)
```

## Usage rupiah

this function is used to make the nominal format into rupiah

```javascript
import "package:keep_it_simple/keep_it_simple.dart";
// or
import "package:keep_it_simple/helpers/rupiah.dart";

Text(rupiah(1000).toString());
```
