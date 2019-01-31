//
//  AppDelegate.swift
//  Todoey
//
//  Created by Mantas Skeiverys on 17/01/2019.
//  Copyright © 2019 Mantas Skeiverys. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        do{
            _ = try Realm()
        }catch{
            print("error initializing realm")
        }
        
        return true
    }
}

