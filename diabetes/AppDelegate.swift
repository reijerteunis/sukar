//
//  AppDelegate.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 27/07/2021.
//

import Foundation
import Firebase

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        return true
    }
}
