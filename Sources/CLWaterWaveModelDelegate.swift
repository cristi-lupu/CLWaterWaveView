//
//  CLWaterWaveModelDelegate.swift
//  Wave
//
//  Created by Lupu Cristian on 12/9/17.
//  Copyright © 2017 Lupu Cristian. All rights reserved.
//

import UIKit.UIBezierPath

public typealias CLWaterWavePath = UIBezierPath

public protocol CLWaterWaveModelDelegate: class {

    func waterWaveModel(_ waterWaveModel: CLWaterWaveModel, didUpdate wavePath: CLWaterWavePath)

}
