//
//  AppDelegate.swift
//  VCTDD
//
//  Created by Jorge D. Ortiz Fuentes on 11/1/17.
//  Copyright © 2017 Canonical Examples. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Parameters & Constants
    
    let storyboardName = "Main"

    // MARK: - Instance variables
    
    var window: UIWindow?

    // MARK: - Delegate methods
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let model = GeniusesModel()
        let presenter = GeniusesListPresenter(model: model)
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let initialNavigationCtlr = storyboard.instantiateInitialViewController() as! UINavigationController
        let mainView = initialNavigationCtlr.topViewController as! GeniusesTableViewController
        mainView.presenter = presenter
        window?.rootViewController = initialNavigationCtlr
        window?.makeKeyAndVisible()
        return true
    }

}

