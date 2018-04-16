//
//  WaveSliderHelper.swift
//  CLWaterWaveView_Example
//
//  Created by Lupu Cristian on 2/4/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import CoreGraphics

enum WaveSliderHelper {

    static func procentageAmplitude(for value: CGFloat) -> Float {
        return Float((value - 20) / 50)
    }

    static func valueAmplitude(for value: Float) -> CGFloat {
        return CGFloat((value * 50) + 20)
    }

    static func procentageSpeed(for value: CGFloat) -> Float {
        return Float((value - 0.003) / 0.007)
    }

    static func valueSpeed(for value: Float) -> CGFloat {
        return CGFloat((value * 0.007) + 0.003)
    }

    static func procentageAngularVelocity(for value: CGFloat) -> Float {
        return Float((value - 0.2) / 0.4)
    }

    static func valueAngularVelocity(for value: Float) -> CGFloat {
        return CGFloat((value * 0.4) + 0.2)
    }

    static func procentageDepth(for value: CGFloat) -> Float {
        return Float((value - 0) / 1)
    }

    static func valueDepth(for value: Float) -> CGFloat {
        return CGFloat((value * 1) + 0)
    }

}
