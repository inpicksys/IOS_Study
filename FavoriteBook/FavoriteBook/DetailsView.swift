//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Misha Strutinsky on 22.08.2022.
//

import SwiftUI

struct DetailsView: View {
    var chosenFavoriteElement: FavoriteElements
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            Text(chosenFavoriteElement.description)
        }
        
    }
    
    struct DetailsView_Previews: PreviewProvider {
        static var previews: some View {
            DetailsView(chosenFavoriteElement: thedarkknight)
        }
    }
}
