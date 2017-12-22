//
//  AppDelegate.swift
//  app
//
//  Created by Remi Robert on 22/12/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        guard let window = self.window else { return false }
        window.rootViewController = UIViewController()
        window.makeKeyAndVisible()
        return true
    }
}

