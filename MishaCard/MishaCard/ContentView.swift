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
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 0.90)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("MishaStrutinsky")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150.0, height:150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Misha Strutinsky")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("Fullstack Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+380 66 84 84 064", imageName: "phone.fill")
                InfoView(text: "strmisha.s@gmail.com", imageName: "envelope.fill")
                
                    
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


