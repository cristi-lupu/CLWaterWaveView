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

    static func getProcentageAmplitude(for value: CGFloat) -> Float {
        return Float((value - 20) / 50)
    }

    static func getValueAmplitude(for value: Float) -> CGFloat {
        return CGFloat((value * 50) + 20)
    }

    static func getProcentageSpeed(for value: CGFloat) -> Float {
        return Float((value - 0.003) / 0.007)
    }

    static func getValueSpeed(for value: Float) -> CGFloat {
        return CGFloat((value * 0.007) + 0.003)
    }

    static func getProcentageAngularVelocity(for value: CGFloat) -> Float {
        return Float((value - 0.2) / 0.4)
    }

    static func getValueAngularVelocity(for value: Float) -> CGFloat {
        return CGFloat((value * 0.4) + 0.2)
    }

    static func getProcentageDepth(for value: CGFloat) -> Float {
        return Float((value - 0) / 1)
    }

    static func getValueDepth(for value: Float) -> CGFloat {
        return CGFloat((value * 1) + 0)
    }

}
