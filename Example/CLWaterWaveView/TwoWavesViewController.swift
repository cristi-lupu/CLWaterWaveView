//
//  TwoWavesViewController.swift
//  CLWaterWaveView_Example
//
//  Created by Lupu Cristian on 2/4/18.
//  Copyright © 2018 Lupu Cristian. All rights reserved.
//

import Foundation
import UIKit
import CLWaterWaveView

final class TwoWavesViewController: UIViewController {

    @IBOutlet weak private var wave_1: CLWaterWaveView!
    @IBOutlet weak private var wave_2: CLWaterWaveView!

    @IBOutlet weak private var amplitudeSlider_1: UISlider!
    @IBOutlet weak private var speedSlider_1: UISlider!
    @IBOutlet weak private var angularVelocitySlider_1: UISlider!
    @IBOutlet weak private var depthSlider_1: UISlider!

    @IBOutlet weak private var amplitudeSlider_2: UISlider!
    @IBOutlet weak private var speedSlider_2: UISlider!
    @IBOutlet weak private var angularVelocitySlider_2: UISlider!
    @IBOutlet weak private var depthSlider_2: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        wave_1.amplitude = 39
        wave_1.speed = 0.008
        wave_1.angularVelocity = 0.31
        wave_1.depth = 0.55

        wave_1.startAnimation()

        wave_2.amplitude = 39
        wave_2.speed = 0.01
        wave_2.angularVelocity = 0.28
        wave_2.depth = 0.5

        wave_2.startAnimation()

        amplitudeSlider_1.value = WaveSliderHelper.getProcentageAmplitude(for: wave_1.amplitude)
        speedSlider_1.value = WaveSliderHelper.getProcentageSpeed(for: wave_1.speed)
        angularVelocitySlider_1.value = WaveSliderHelper.getProcentageAngularVelocity(for: wave_1.angularVelocity)
        depthSlider_1.value =  WaveSliderHelper.getProcentageDepth(for: wave_1.depth)

        amplitudeSlider_2.value = WaveSliderHelper.getProcentageAmplitude(for: wave_2.amplitude)
        speedSlider_2.value = WaveSliderHelper.getProcentageSpeed(for: wave_2.speed)
        angularVelocitySlider_2.value = WaveSliderHelper.getProcentageAngularVelocity(for: wave_2.angularVelocity)
        depthSlider_2.value =  WaveSliderHelper.getProcentageDepth(for: wave_2.depth)
    }

    @IBAction private func didChangedValue(_ sender: UISlider) {
        switch sender {
        case amplitudeSlider_1:
            wave_1.amplitude = WaveSliderHelper.getValueAmplitude(for: sender.value)
            print("Wave 1 Amplitude: \(wave_1.amplitude)")
        case speedSlider_1:
            wave_1.speed = WaveSliderHelper.getValueSpeed(for: sender.value)
            print("Wave 1 Speed: \(wave_1.speed)")
        case angularVelocitySlider_1:
            wave_1.angularVelocity = WaveSliderHelper.getValueAngularVelocity(for: sender.value)
            print("Wave 1 Angular Velocity: \(wave_1.angularVelocity)")
        case depthSlider_1:
            wave_1.depth = WaveSliderHelper.getValueDepth(for: sender.value)
            print("Wave 1 Depth: \(wave_1.depth)")
        case amplitudeSlider_2:
            wave_2.amplitude = WaveSliderHelper.getValueAmplitude(for: sender.value)
            print("Wave 2 Amplitude: \(wave_2.amplitude)")
        case speedSlider_2:
            wave_2.speed = WaveSliderHelper.getValueSpeed(for: sender.value)
            print("Wave 2 Speed: \(wave_2.speed)")
        case angularVelocitySlider_2:
            wave_2.angularVelocity = WaveSliderHelper.getValueAngularVelocity(for: sender.value)
            print("Wave 2 Angular Velocity: \(wave_2.angularVelocity)")
        case depthSlider_2:
            wave_2.depth = WaveSliderHelper.getValueDepth(for: sender.value)
            print("Wave 2 Depth: \(wave_2.depth)")
        default: break
        }
    }

    @IBAction private func didTapStart_1(_ sender: UIButton) {
        wave_1.startAnimation()
    }

    @IBAction private func didTapStop_1(_ sender: UIButton) {
        wave_1.stopAnimation()
    }

    @IBAction private func didTapStart_2(_ sender: UIButton) {
        wave_2.startAnimation()
    }

    @IBAction private func didTapStop_2(_ sender: UIButton) {
        wave_2.stopAnimation()
    }

}
