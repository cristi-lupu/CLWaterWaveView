//
//  CLWaterWaveView.swift
//  Wave
//
//  Created by Lupu Cristian on 12/9/17.
//  Copyright © 2017 Lupu Cristian. All rights reserved.
//

import UIKit

public final class CLWaterWaveView: UIView {

    // MARK: Public and IBInspectable properties

    /// Wave depth.
    /// - Depth range: 0.0 ... 1.0.
    /// - Default value is 0.37
    @IBInspectable
    public var depth: CGFloat = CLWaterWaveModel.Defaults.depth {
        didSet {
            waterWaveModel.depth = self.depth
        }
    }

    /// Wave amplitude
    /// - Set bigger than 0.0
    /// - Default value is 39.0
    @IBInspectable
    public var amplitude: CGFloat = CLWaterWaveModel.Defaults.amplitude {
        didSet {
            waterWaveModel.amplitude = self.amplitude
        }
    }

    /// Wave speed
    /// - Set bigger than 0.0
    /// - Default value is 0.009
    @IBInspectable
    public var speed: CGFloat = CLWaterWaveModel.Defaults.speed {
        didSet {
            waterWaveModel.speed = self.speed
        }
    }

    /// Wave Angular Velocity
    /// - Set bigger than 0.0
    /// - Default value is 0.37
    @IBInspectable
    public var angularVelocity: CGFloat = CLWaterWaveModel.Defaults.angularVelocity {
        didSet {
            waterWaveModel.angularVelocity = self.angularVelocity
        }
    }

    /// Animate State
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
