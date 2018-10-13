//
//  CLWaterWaveView.swift
//  Wave
//
//  Created by Cristian Lupu on 12/9/17.
//  Copyright © 2018 Cristian Lupu. All rights reserved.
//

import UIKit

public final class CLWaterWaveView: UIView {

    // MARK: Public and IBInspectable properties

    /**
     Wave depth.

     - Depth range: 0.0 ... 1.0.
     - Default value is 0.37
    */
    @IBInspectable
    public var depth: CGFloat = CLWaterWaveModel.Defaults.depth {
        didSet {
            waterWaveModel.depth = self.depth
        }
    }

    /**
     Wave amplitude

     - Set bigger than 0.0
     - Default value is 39.0
    */
    @IBInspectable
    public var amplitude: CGFloat = CLWaterWaveModel.Defaults.amplitude {
        didSet {
            waterWaveModel.amplitude = self.amplitude
        }
    }

    /**
     Wave speed

     - Set bigger than 0.0
     - Default value is 0.009
    */
    @IBInspectable
    public var speed: CGFloat = CLWaterWaveModel.Defaults.speed {
        didSet {
            waterWaveModel.speed = self.speed
        }
    }

    /**
     Wave Angular Velocity

     - Set bigger than 0.0
     - Default value is 0.37
    */
    @IBInspectable
    public var angularVelocity: CGFloat = CLWaterWaveModel.Defaults.angularVelocity {
        didSet {
            waterWaveModel.angularVelocity = self.angularVelocity
        }
    }

    /**
     Animate State
    */
    public var isAnimating: Bool {
        return waterWaveModel.isAnimating
    }

    // MARK: Private properties

    private let waterWaveModel = CLWaterWaveModel()

    // MARK: Initializations

    public init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    // MARK: Layout Subviews

    override public func layoutSubviews() {
        super.layoutSubviews()
        waterWaveModel.frame = frame
    }

    // MARK: Public methods

    public func startAnimation() {
        waterWaveModel.start()
    }

    public func stopAnimation() {
        waterWaveModel.stop()
    }

    /**
     Add background color animation with 2 base colors

     - author: Lupu Cristian

     - parameter fromColor:
       Starting Color.

     - parameter toColor:
       Finish Color.

     - parameter duration:
       Duration of animation in seconds.
       This specify animation duration from color to color.
       Default is 2.0.
    */
    public func addBackgroundColorAnimation(from fromColor: UIColor, to toColor: UIColor, duration: CFTimeInterval = 2.0) {
        let animation = CABasicAnimation(keyPath: "backgroundColor")

        animation.duration = duration

        animation.fromValue = fromColor.cgColor
        animation.toValue = toColor.cgColor

        animation.repeatCount = Float.greatestFiniteMagnitude
        animation.autoreverses = true

        layer.add(animation, forKey: "backgroundColorAnimation")
    }

    // MARK: Private methods

    private func commonInit() {
        waterWaveModel.frame = self.frame
        waterWaveModel.delegate = self
    }
}

extension CLWaterWaveView: CLWaterWaveModelDelegate {
    public func waterWaveModel(_ waterWaveModel: CLWaterWaveModel, didUpdate wavePath: UIBezierPath) {
        let shape = CAShapeLayer()
        shape.path = wavePath.cgPath
        self.layer.mask = shape
    }
}
