//
//  AppDelegate.swift
//  CLWaterWaveView
//
//  Created by Lupu Cristian on 02/04/2018.
//  Copyright (c) 2018 Lupu Cristian. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UIApplication.shared.statusBarStyle = .lightContent
        UINavigationBar.appearance().tintColor = .white
        return true
    }

}

