//
//  Menu.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            Input().tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
            Settings().tabItem {
                // Insert gear picture
                Text("Settings") }.tag(2)
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
