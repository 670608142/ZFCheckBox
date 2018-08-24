# ZFCheckBox

[![CI Status](https://img.shields.io/travis/670608142/ZFCheckBox.svg?style=flat)](https://travis-ci.org/670608142/ZFCheckBox)
[![Version](https://img.shields.io/cocoapods/v/ZFCheckBox.svg?style=flat)](https://cocoapods.org/pods/ZFCheckBox)
[![License](https://img.shields.io/cocoapods/l/ZFCheckBox.svg?style=flat)](https://cocoapods.org/pods/ZFCheckBox)
[![Platform](https://img.shields.io/cocoapods/p/ZFCheckBox.svg?style=flat)](https://cocoapods.org/pods/ZFCheckBox)

## Example

![Example](https://github.com/670608142/ZFCheckBox/raw/master/Example/example.jpeg)

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ZFCheckBox is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/670608142/ZFSpecs.git'
pod 'ZFCheckBox'
```

## Usage

### To add the widget into your controller:

```
import "ZFCheckBox.h"

ZFCheckBox *cb = [[ZFCheckBox alloc]initWithFrame:CGRectMake(100, 100, 30, 30)];
```

### To set Click Event:

```
[cb onClickWithBlock:^{
// TODO..
}];
```

### To set Tick or CheckBox appearence:

```
[cb setCornerRadius:3.0f];
[cb setBorderWidth:2.0f];
[cb setTickLineWidth:2.0f];
[cb setTickColor:[UIColor redColor]];
```

### To set status of CheckBox:

```
[cb setSelected:YES];
```

### To get status of CheckBox;

```
[cb isSelected];
```


## Author

670608142, 670608142@qq.com

## License

ZFCheckBox is available under the MIT license. See the LICENSE file for more info.
