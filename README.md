# CLWaterWaveView

[![Version](https://img.shields.io/cocoapods/v/CLWaterWaveView.svg?style=flat)](http://cocoapods.org/pods/CLWaterWaveView)
[![License](https://img.shields.io/cocoapods/l/CLWaterWaveView.svg?style=flat)](http://cocoapods.org/pods/CLWaterWaveView)
[![Platform](https://img.shields.io/cocoapods/p/CLWaterWaveView.svg?style=flat)](http://cocoapods.org/pods/CLWaterWaveView)

## Features

* Simple configuration
* Live editing

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

![Alt Text](https://github.com/cristiLupu/CLWaterWaveView/blob/master/demo.gif)

## Requirements

* XCode 9
* Awesome project :)

## Usage

#### Interface Builder
In Interface Builder, select wave view, and in attributes inspector set values:

![Alt Text](https://github.com/cristiLupu/CLWaterWaveView/blob/master/attributes_inspector.png)

#### Code

```swift
import CLWaterWaveView

let waveView = CLWaterWaveView() // at init, it sets default values

// configure the wave
waveView.amplitude = 39.0
waveView.speed = 0.009
waveView.angularVelocity = 0.37
waveView.depth = 0.37

waveView.startAnimation()

// to stop animation
waveView.stopAnimation()
```

## Installation

CLWaterWaveView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CLWaterWaveView'
```

## Author

Lupu Cristian, lupucristiancptc@gmail.com

## License

CLWaterWaveView is available under the MIT license. See the LICENSE file for more info.


