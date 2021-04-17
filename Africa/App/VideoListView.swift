//
//  VideoListView.swift
//  Africa
//
//  Created by Admin on 14/04/2021.
//

import SwiftUI

struct VideoListView: View {
    // MARK:- PROPERTIES
   @State private var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK:- BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
             } // LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Vidoes", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button( action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } // NAVIGATIONVIEW
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
