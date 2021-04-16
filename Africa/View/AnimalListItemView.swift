//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Admin on 15/04/2021.
//

import SwiftUI

struct AnimalListItemView: View {
   
    let animal: Animal
    
    // MARK: BODY
    var body: some View {
        HStack {
            Image(animal.image)
                .resizable()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12.0))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing,8)
                    .lineLimit(2)
            }
            
        } // HSTACK
        
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] =
        Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[0]).previewLayout(.sizeThatFits).padding()
    }
}
