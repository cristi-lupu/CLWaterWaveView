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

    @IBInspectable
    public var depth: CGFloat = CLWaterWaveModel.Defaults.depth {
        didSet {
            waterWaveModel.depth = self.depth
        }
    }

    @IBInspectable
    public var amplitude: CGFloat = CLWaterWaveModel.Defaults.amplitude {
        didSet {
            waterWaveModel.amplitude = self.amplitude
        }
    }

    @IBInspectable
    public var speed: CGFloat = CLWaterWaveModel.Defaults.speed {
        didSet {
            waterWaveModel.speed = self.speed
        }
    }

    @IBInspectable
    public var angularVelocity: CGFloat = CLWaterWaveModel.Defaults.angularVelocity {
        didSet {
            waterWaveModel.angularVelocity = self.angularVelocity
        }
    }

    // MARK: Private properties

    private var waterWaveModel = CLWaterWaveModel()

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
