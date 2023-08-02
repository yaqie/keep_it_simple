# Keep It Simple

This package is made to make it easier for us in the process of developing applications using Flutter. already available components and functions that you can use according to your needs. I hope this package can make your life easier. Your support and support means a lot to us. Please click the image below to donate. please click saweria for you Indonesian people. best regards from us. Thank You

# Support

<div float="left">
<a href="https://saweria.co/yaqie" target="_blank"><img src="https://saweria.co/twitter_card.png" style="width: 150px !important;" ></a>
<a href="https://www.buymeacoffee.com/yaqie" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="width: 150px !important;" ></a>
</div>
Click the image above to donate to always support us

## Features

- [add space for width and height (AddWidth / AddHeight)](#usage-addwidth--addheight)
- [radius for corner (Corner)](#usage-corner)
- [format rupiah (rupiah)](#usage-rupiah)
- [easy snackbar (snackBar)](#usage-snackbar)
- [simple shimmer (SimpleShimmer)](#usage-simpleshimmer)

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

## Usage snackbar

This function makes it easier for you to call snackbar

```javascript
import "package:keep_it_simple/keep_it_simple.dart";
// or
import "package:keep_it_simple/helpers/snackbar.dart";

// simple way
snackBar(context, text: 'Hallo');
// or
snackBar(context,
    bgColor: Colors.teal,
    isFLoating: false,
    text: 'Success',
    actionLabel: 'Dismiss', actionPress: () {
  // do something
});
```

## Usage SimpleShimmer

This widget is used to create a simple shimmer/loading effect.

```javascript
import "package:keep_it_simple/keep_it_simple.dart";
// or
import "package:keep_it_simple/components/simple_shimmer.dart";

// simple way
const SimpleShimmer()
// or
const SimpleShimmer(
  bgColor: Colors.black,
  isCircle: false,
  looping: 1,
  height: 50,
),
```
