//
//  DiscoverSection.swift
//  Chouten
//
//  Created by Inumaki on 16/10/2024.
//

import Foundation
import JavaScriptCore

public struct DiscoverSection: Codable, Equatable, Hashable {
    public let title: String
    public let type: Int // 0 = Carousel, 1 = List
    public let list: [DiscoverData]

    public init(title: String, type: Int, list: [DiscoverData]) {
        self.title = title
        self.type = type
        self.list = list
    }

    public init?(jsValue: JSValue) {
        guard
            let title = jsValue["title"]?.toString(),
            let type = jsValue["type"]?.toInt32(),
            let dataList = jsValue["list"]?.toArray()
        else {
            return nil
        }

        var discoverDataList = [DiscoverData]()
        for dataItem in dataList {
            if let dataJSValue = dataItem as? JSValue, let discoverData = DiscoverData(jsValue: dataJSValue) {
                discoverDataList.append(discoverData)
            }
        }

        self.title = title
        self.type = Int(type)
        self.list = discoverDataList
    }
}
