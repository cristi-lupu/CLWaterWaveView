//
//  AppDelegate.swift
//  CLWaterWaveView
//
//  Created by Cristian Lupu on 02/04/2018.
//  Copyright (c) 2018 Cristian Lupu. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().tintColor = .white
        return true
    }
}
