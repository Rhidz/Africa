//
//  InsetFactView.swift
//  Africa
//
//  Created by Admin on 16/04/2021.
//

import SwiftUI

struct InsetFactView: View {
    // MARK:- PROPERTIES
    let animal: Animal
    
    // MARK:- BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
