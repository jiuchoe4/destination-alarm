//
//  busApp.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI
import GoogleMaps
import GooglePlaces


class AppDelegate: NSObject, UIApplicationDelegate {
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        var keys: NSDictionary?

        if let path = Bundle.main.path(forResource: "Keys", ofType: "plist") {
                keys = NSDictionary(contentsOfFile: path)
            }
        if let dict = keys {
            let googlecloudkey = dict["googlecloudapi"] as? String
            GMSServices.provideAPIKey("\(String(describing: googlecloudkey))")
            GMSPlacesClient.provideAPIKey("\(String(describing: googlecloudkey))")
            return true
               // Initialize Parse.
               // Parse.setApplicationId(applicationId!, clientKey: clientKey!)
           }
        return false
    }
}

@main
struct busApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

