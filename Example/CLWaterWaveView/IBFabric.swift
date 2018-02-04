//
//  IBFabric.swift
//  CLWaterWaveView_Example
//
//  Created by Lupu Cristian on 2/4/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

enum IBFabric {

    private static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }

    static var interfaceBuilderExampleViewController: InterfaceBuilderExampleViewController {
        return mainStoryboard.instantiateViewController(withIdentifier: "InterfaceBuilderExampleViewController") as! InterfaceBuilderExampleViewController
    }

    static var twoWavesViewController: TwoWavesViewController {
        return mainStoryboard.instantiateViewController(withIdentifier: "TwoWavesViewController") as! TwoWavesViewController
    }

}
