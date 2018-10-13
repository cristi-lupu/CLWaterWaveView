//
//  InterfaceBuilderExampleViewController.swift
//  CLWaterWaveView_Example
//
//  Created by Cristian Lupu on 2/4/18.
//  Copyright © 2018 Cristian Lupu. All rights reserved.
//

import Foundation
import UIKit
import CLWaterWaveView

final class InterfaceBuilderExampleViewController: UIViewController {

    @IBOutlet weak private var waveView: CLWaterWaveView!
    @IBOutlet weak private var amplitudeSlider: UISlider!
    @IBOutlet weak private var speedSlider: UISlider!
    @IBOutlet weak private var angularVelocitySlider: UISlider!
    @IBOutlet weak private var depthSlider: UISlider!

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        waveView.startAnimation()

        amplitudeSlider.value = WaveSliderHelper.procentageAmplitude(for: waveView.amplitude)
        speedSlider.value = WaveSliderHelper.procentageSpeed(for: waveView.speed)
        angularVelocitySlider.value = WaveSliderHelper.procentageAngularVelocity(for: waveView.angularVelocity)
        depthSlider.value =  WaveSliderHelper.procentageDepth(for: waveView.depth)
    }
    
    @IBAction private func didChangedValue(_ sender: UISlider) {
        switch sender {
        case amplitudeSlider:
            waveView.amplitude = WaveSliderHelper.valueAmplitude(for: sender.value)
            print("Wave Amplitude: \(waveView.amplitude)")
        case speedSlider:
            waveView.speed = WaveSliderHelper.valueSpeed(for: sender.value)
            print("Wave Speed: \(waveView.speed)")
        case angularVelocitySlider:
            waveView.angularVelocity = WaveSliderHelper.valueAngularVelocity(for: sender.value)
            print("Wave Angular Velocity: \(waveView.angularVelocity)")
        case depthSlider:
            waveView.depth = WaveSliderHelper.valueDepth(for: sender.value)
            print("Wave Depth: \(waveView.depth)")
        default: break
        }
    }

    @IBAction private func didTapStart(_ sender: UIButton) {
        waveView.startAnimation()
    }

    @IBAction private func didTapStop(_ sender: UIButton) {
        waveView.stopAnimation()
    }

}
