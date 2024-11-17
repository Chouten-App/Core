//
//  SearchResultInfo.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct SearchResultInfo: Codable, Equatable, Hashable {
    public var count: Int?
    public var pages: Int
    public var next: String?

    public init(count: Int? = nil, pages: Int, next: String? = nil) {
        self.count = count
        self.pages = pages
        self.next = next
    }

    public init?(jsValue: JSValue) {
        guard let pages = jsValue["pages"]?.toInt32() else {
            return nil
        }

        let convertedPages = Int(pages)

        let count = jsValue["count"]?.toInt32() as? Int
        let next = jsValue["next"]?.toString()


        self.init(count: count, pages: convertedPages, next: next)
    }
}
