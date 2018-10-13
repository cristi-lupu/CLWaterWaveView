<h1 align="center">CLWaterWaveView</h1>

<p align="center">
<img src="icon.png" alt="Pod Icon"/>
</p>

<p align="center">
<a href="https://developer.apple.com/swift/">
  <img src="https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat" alt="Swift"/>
</a>
<img src="https://img.shields.io/badge/Platform-iOS%209.0+-black.svg" alt="Platform: iOS">
<img src="https://img.shields.io/cocoapods/v/CLWaterWaveView.svg?style=flat)](http://cocoapods.org/pods/CLWaterWaveView" alt="Version">
<img src="https://img.shields.io/cocoapods/l/CLWaterWaveView.svg?style=flat)](http://cocoapods.org/pods/CLWaterWaveView" alt="Licence">
</p>

## Features

![Intro Gif](intro.gif)

* **Simple configuration**
* **Live editing**

## Example

To run the example project, clone the repo, and run **`pod install`** from the Example directory first.

![Demo Gif](demo.gif)

## Usage

#### Interface Builder
In Interface Builder, select wave view, and in attributes inspector set values:

![Alt Text](attributes_inspector.png)

#### Code

```swift
import CLWaterWaveView

let waveView = CLWaterWaveView()

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

CLWaterWaveView is available through **[CocoaPods](http://cocoapods.org)**. To install
it, simply add the following line to your Podfile:

```ruby
pod 'CLWaterWaveView'
```

## Author

**Cristian Lupu, lupucristiancptc@gmail.com**

## License

**CLWaterWaveView** is available under the **MIT license**. See the **[LICENSE](https://github.com/cristiLupu/CLWaterWaveView/blob/master/LICENSE)** file for more info.


