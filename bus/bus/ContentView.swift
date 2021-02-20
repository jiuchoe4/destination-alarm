//
//  ContentView.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    var body: some View {
        VStack {
            GoogleMapsView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
