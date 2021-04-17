//
//  VideoModel.swift
//  Africa
//
//  Created by Admin on 17/04/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
