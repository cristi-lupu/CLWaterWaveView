//
//  CLWaterWaveModel.swift
//  Wave
//
//  Created by Cristian Lupu on 12/9/17.
//  Copyright © 2018 Cristian Lupu. All rights reserved.
//

import UIKit

public final class CLWaterWaveModel {
    // MARK: Public properties

    /// Any class instance delegate who conforms to protocol CLWaterWaveModelDelegate
    public weak var delegate: CLWaterWaveModelDelegate?

    /// Frame to calculate the wave
    public var frame: CGRect!

    /// Wave depth.
    /// - Depth range: 0.0 ... 1.0.
    /// - Default value is 0.37
    public var depth: CGFloat!

    /// Wave amplitude
    /// - Set bigger than 0.0
    /// - Default value is 39.0
    public var amplitude: CGFloat!

    /// Wave speed
    /// - Set bigger than 0.0
    /// - Default value is 0.009
    public var speed: CGFloat!

    /// Wave Angular Velocity
    /// - Set bigger than 0.0
    /// - Default value is 0.37
    public var angularVelocity: CGFloat!

    /// Animate State
    public private(set) var isAnimating = false

    // MARK: Private properties

    private var phase: CGFloat = 0
    private var displayLink: CADisplayLink!

    // MARK: Initializations

    public init() {
        setDefault()
    }

    public init(ownerFrame frame: CGRect) {
        self.frame = frame
        setDefault()
    }

    // MARK: Public methods

    /// Start to calculate the path
    public func start() {
        guard displayLink == nil, frame != nil, !isAnimating else {
            return
        }

        isAnimating = true

        displayLink = CADisplayLink(target: self, selector: #selector(wave))
        displayLink.add(to: .main, forMode: .default)
    }


    /// Stop to calculate
    public func stop() {
        guard displayLink != nil, isAnimating else {
            return
        }

        isAnimating = false

        displayLink.isPaused = true
        displayLink.invalidate()
        displayLink = nil
    }

    // MARK: Private methods

    private func setDefault() {
        self.amplitude = Defaults.amplitude
        self.speed = Defaults.speed
        self.angularVelocity = Defaults.angularVelocity
        self.depth = Defaults.depth
    }

    @objc private func wave() {
        phase += abs(speed)
        let path = createWaterWavePath()
        self.delegate?.waterWaveModel(self, didUpdate: path)
    }

    private func createWaterWavePath() -> CLWaterWavePath {
        let path = CLWaterWavePath()
        path.lineWidth = 1

        let waterHeightY = (1 - (abs(depth) > 1.0 ? 1.0 : abs(depth))) * frame.size.height

        path.move(to: CGPoint(x: 0, y: waterHeightY))

        var y = waterHeightY

        for x in stride(from: 0 as CGFloat, to: frame.size.width, by: +1 as CGFloat) {
            y = abs(amplitude) * sin(x / 180 * CGFloat.pi * abs(angularVelocity) + phase / CGFloat.pi * 4) + waterHeightY
            path.addLine(to: CGPoint(x: x, y: y))
        }

        path.addLine(to: CGPoint(x: frame.size.width, y: y))
        path.addLine(to: CGPoint(x: frame.size.width, y: frame.size.height))
        path.addLine(to: CGPoint(x: 0, y: frame.size.height))
        path.close()

        return path
    }
}
