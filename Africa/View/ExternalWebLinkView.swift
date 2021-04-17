//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Admin on 16/04/2021.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK:- PROPERTIES
    let animal: Animal
    
    // MARK:- BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up")
                    Link(animal.name, destination: URL(string: animal.link)!)
                }
                .foregroundColor(.accentColor)
            } // HSTACK
        }
        
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
    }
}
