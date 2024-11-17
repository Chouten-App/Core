//
//  SearchData.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct SearchData: Codable, Equatable, Hashable {
    public let id: UUID
    public let url: String
    public let poster: String
    public let titles: Titles
    public let indicator: String
    public let current: Int?
    public let total: Int?

    public init(url: String, poster: String, titles: Titles, indicator: String, current: Int?, total: Int?) {
        self.id = UUID()
        self.url = url
        self.poster = poster
        self.titles = titles
        self.indicator = indicator
        self.current = current
        self.total = total
    }

    public init?(jsValue: JSValue) {
        guard
            let url = jsValue["url"]?.toString(),
            let poster = jsValue["poster"]?.toString(),
            let titlesValue = jsValue["titles"],
            let titles = Titles(jsValue: titlesValue),
            let indicator = jsValue["indicator"]?.toString()
        else {
            print("Failed to convert Search data.")
            return nil
        }

        let current = jsValue["current"]?.toInt32()
        let total = jsValue["total"]?.toInt32()

        self.id = UUID()

        self.url = url
        self.poster = poster
        self.titles = titles
        self.indicator = indicator
        // swiftlint:disable force_unwrapping
        self.current = current != nil ? Int(current!) : nil
        self.total = total != nil ? Int(total!) : nil
        // swiftlint:enable force_unwrapping
    }
}
