//
//  RelayProvider.swift
//  Core
//
//  Created by Inumaki on 10/11/2024.
//

import Foundation

public protocol RelayProvider {
    func loadModule(_ fileURL: URL, completion: @escaping (Result<Module, Error>) -> Void)
    
    // general source module functions
    func info(_ url: String, completion: @escaping (Result<InfoData, Error>) -> Void) async
    func search(_ url: String, completion: @escaping (Result<SearchResult, Error>) -> Void, _ page: Int) async
    func discover(completion: @escaping (Result<[DiscoverSection], Error>) -> Void) async
    func media(_ url: String, completion: @escaping (Result<[MediaList], Error>) -> Void) async
    
    // video content functions
    func sources(_ url: String, completion: @escaping (Result<[SourceList], Error>) -> Void) async
    func streams(_ url: String, completion: @escaping (Result<MediaStream, Error>) -> Void) async
    
    // book content functions
    func pages(_ url: String, completion: @escaping (Result<[String], Error>) -> Void) async
    
    func getCurrentModuleType(completion: @escaping (Result<ModuleType, Error>) -> Void)
}
