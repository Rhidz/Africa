//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Admin on 16/04/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK:- PROPERTIES
    let animal: Animal
    
    // MARK:- BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 16) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 26)
                    )
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                }
                .padding(.horizontal)
                
                InsetGalleryView(animal: animal)
                
                // FACTS
                
                // DESCRIPTION
                
                // MAP
                
                // LINK
                
            }// VStack
            
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }// ScrollView
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[1])
        }
        .previewDevice("iPhone 12 pro")
    }
}
