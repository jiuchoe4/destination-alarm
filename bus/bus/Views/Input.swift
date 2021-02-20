//
//  Input.swift
//  bus
//
//  Created by Jiu Choe on 2/19/21.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct Input: View {
    //State property that holds the user's onput
    @State var userInput = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter destination...", text: $userInput)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding()
            Text(userInput)
                .multilineTextAlignment(.center)
                .padding()
                .font(.headline)
        }
    }
}

struct Input_Previews: PreviewProvider {
    static var previews: some View {
        Input()
    }
}
