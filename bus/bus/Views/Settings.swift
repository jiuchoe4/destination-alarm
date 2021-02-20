//
//  Settings.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI

struct Settings: View {
    
    @State private var speed = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack (){
            Text("Settings")
                .font(.title)
                .fontWeight(.medium)
                .padding(.all)
            Label("Notification Radius", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                .alignmentGuide(HorizontalAlignment.leading) { _ in  -500 }
            HStack() {
                Text("0")
                Slider(
                    value: $speed,
                    in: 0...100,
                    step: 5,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                ) {
                    Text("Speed")
                }
                Text("100")
            }
                .padding(.all)
            Text("\(speed)")
                    .foregroundColor(isEditing ? .red : .blue)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
