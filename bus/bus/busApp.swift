//
//  busApp.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI
import GoogleMaps
import GooglePlaces

let GOOGLE_CLOUD_API = ProcessInfo.processInfo.environment["GOOGLE-CLOUD-API"]


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey(GOOGLE_CLOUD_API!)
        GMSPlacesClient.provideAPIKey(GOOGLE_CLOUD_API!)
        return true
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

