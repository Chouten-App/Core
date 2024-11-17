//
//  HomeSection.swift
//  Chouten
//
//  Created by Inumaki on 19/10/2024.
//

import Foundation
import Combine

public struct HomeSection: Codable, Equatable, Hashable {
    public let id: String
    public let title: String
    public let type: Int // 0 = Carousel, 1 = List
    public var list: [HomeData]

    public init(id: String, title: String, type: Int, list: [HomeData]) {
        self.id = id
        self.title = title
        self.type = type
        self.list = list
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(type)
    }
}
