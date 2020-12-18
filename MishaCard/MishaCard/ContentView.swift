//
//  ContentView.swift
//  MishaCard
//
//  Created by Misha Strutinsky on 18.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.green)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("Hello, world!")
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
