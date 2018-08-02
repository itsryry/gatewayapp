//
//  AppDelegate.swift
//  gatewayapp
//
//  Created by Aminul Hasan on 5/24/18.
//  Copyright © 2018 Evergent. All rights reserved.
//

import UIKit
import gateway

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        EvergentGatewayAppDelegate.sharedInstance.setClientUrl(url: "https://dev-web-hooq.evergent.com/fbiosconnect?returnUrl=https://google.co.in&deviceName=iphone&deviceType=phone&serialNo=2803216015&modelNo=123123123&ip=183.82.121.105")
        return EvergentGatewayAppDelegate.sharedInstance.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    @objc(application:openURL:sourceApplication:annotation:) func application(_ application: UIApplication, open openUrl: URL, sourceApplication: String?, annotation: Any) -> Bool {
        return EvergentGatewayAppDelegate.sharedInstance.application(application, openUrl: openUrl, sourceApplication: sourceApplication, annotation: annotation)
    }

}

