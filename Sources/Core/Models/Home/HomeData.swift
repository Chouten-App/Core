//
//  HomeData.swift
//  Chouten
//
//  Created by Inumaki on 19/10/2024.
//

import Combine
import Foundation

public struct HomeData: Codable, Equatable, Hashable {
    public let id: String
    public let url: String
    public var status: ItemStatus
    public let titles: Titles
    public let poster: String
    public let description: String
    public let label: Label
    public let indicator: String
    public let isWidescreen: Bool
    public let current: Int?
    public let total: Int?
    public let moduleId: String?

    public init(id: String = UUID().uuidString, url: String, titles: Titles, description: String, poster: String, label: Label, indicator: String, status: ItemStatus = .none, isWidescreen: Bool = false, current: Int?, total: Int?, moduleId: String? = nil) {
        self.id = id
        self.url = url
        self.titles = titles
        self.description = description
        self.poster = poster
        self.label = label
        self.indicator = indicator
        self.isWidescreen = isWidescreen
        self.current = current
        self.total = total
        self.status = status
        self.moduleId = moduleId
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(url)
        hasher.combine(titles)
        hasher.combine(poster)
        hasher.combine(description)
        hasher.combine(label)
        hasher.combine(indicator)
    }
    
    public static func == (lhs: HomeData, rhs: HomeData) -> Bool {
        return lhs.id == rhs.id
    }
}
