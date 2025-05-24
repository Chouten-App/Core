//
//  MediaStream.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct MediaStream: Codable, Equatable, Sendable {
    public let streams: [Stream]
    public let subtitles: [SubtitleData]
    public let skips: [SkipTime]
    public let headers: [String: String]?

    public init(streams: [Stream], subtitles: [SubtitleData], skips: [SkipTime], headers: [String: String]?) {
        self.streams = streams
        self.subtitles = subtitles
        self.skips = skips
        self.headers = headers
    }

    public init(jsValue: JSValue) {
        let streamsValues = jsValue["streams"]?.toStreamsArray()
        self.streams = streamsValues ?? []

        let subtitleValues = jsValue["subtitles"]?.toSubtitlesArray()
        self.subtitles = subtitleValues ?? []

        let skipValues = jsValue["skips"]?.toSkipTimeArray()
        self.skips = skipValues ?? []

        self.headers = jsValue.forProperty("headers")?.toDictionary() as? [String: String]
    }
}
