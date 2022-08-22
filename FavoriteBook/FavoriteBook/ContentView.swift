//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Misha Strutinsky on 13.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) {element in
                            NavigationLink {
                                DetailsView(chosenFavoriteElement: element)
                            } label: {
                                Text(element.name)
                            }


                        }
                    }
                    
                }
                
            }
        }
       
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
