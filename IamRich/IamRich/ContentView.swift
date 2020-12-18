//
//  ContentView.swift
//  IamRich
//
//  Created by Misha Strutinsky on 11.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("I Am Rich")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(.white)
                    .padding()
                
                Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)

                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.previewDevice(PreviewDevice(rawValue: "IPhone SE"))
    }
}
