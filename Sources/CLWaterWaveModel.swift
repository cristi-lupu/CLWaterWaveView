//
//  CLWaterWaveModel.swift
//  Wave
//
//  Created by Lupu Cristian on 12/9/17.
//  Copyright © 2017 Lupu Cristian. All rights reserved.
//

import UIKit

public final class CLWaterWaveModel {

    // MARK: Public properties

    public weak var delegate: CLWaterWaveModelDelegate?
    public var frame: CGRect!
    public var depth: CGFloat!
    public var amplitude: CGFloat!
    public var speed: CGFloat!
    public var angularVelocity: CGFloat!

    // MARK: Private properities

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

    public func start() {
        guard displayLink == nil else {
            return
        }

        guard frame != nil else {
            return
        }

        displayLink = CADisplayLink(target: self, selector: #selector(wave))
        displayLink.add(to: RunLoop.main, forMode: .defaultRunLoopMode)
    }

    public func stop() {
        guard displayLink != nil else {
            return
        }

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
        phase += speed
        let path = createWaterWavePath()
        self.delegate?.waterWaveModel(self, didUpdate: path)
    }

    private func createWaterWavePath() -> CLWaterWavePath {
        let path = CLWaterWavePath()
        path.lineWidth = 1

        let waterHeightY = (1 - (depth > 1.0 ? 1.0 : depth)) * frame.size.height

        path.move(to: CGPoint(x: 0, y: waterHeightY))

        var y = waterHeightY

        for x in stride(from: 0 as CGFloat, to: frame.size.width, by: +1 as CGFloat) {
            y = amplitude * sin(x / 180 * CGFloat.pi * angularVelocity + phase / CGFloat.pi * 4) + waterHeightY
            path.addLine(to: CGPoint(x: x, y: y))
        }

        path.addLine(to: CGPoint(x: frame.size.width, y: y))
        path.addLine(to: CGPoint(x: frame.size.width, y: frame.size.height))
        path.addLine(to: CGPoint(x: 0, y: frame.size.height))
        path.close()

        return path
    }

}
