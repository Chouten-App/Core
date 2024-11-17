//
//  SearchResult.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct SearchResult: Codable, Equatable, Hashable {
    public var info: SearchResultInfo
    public var results: [SearchData]

    public init(info: SearchResultInfo, results: [SearchData]) {
        self.info = info
        self.results = results
    }

    public init?(jsValue: JSValue) {
        guard
            let infoValue = jsValue["info"]
        else {
            print("missing info value")
            return nil
        }

        guard let info = SearchResultInfo(jsValue: infoValue) else {
            print("conversion of info failed")
            return nil
        }

        guard let dataArray = jsValue["results"]?.toArray() as? [[String: Any]] else {
            return nil
        }

        var searchDataArray: [SearchData] = []
        for searchItem in dataArray {
            guard let url = searchItem["url"] as? String,
                  let titlesValue = searchItem["titles"] as? [String: String],
                  let primaryTitle = titlesValue["primary"],
                  let poster = searchItem["poster"] as? String,
                  let indicatorText = searchItem["indicator"] as? String else {
                continue
            }

            let titles = Titles(primary: primaryTitle, secondary: titlesValue["secondary"])

            let currentCount = searchItem["current"] as? Int
            let totalCount = searchItem["total"] as? Int

            let value = SearchData(
                url: url,
                poster: poster,
                titles: titles,
                indicator: indicatorText,
                current: currentCount,
                total: totalCount
            )
            searchDataArray.append(value)
        }

        self.init(info: info, results: searchDataArray)
    }
}
