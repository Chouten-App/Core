//
//  Relay.swift
//  Core
//
//  Created by Inumaki on 11/11/2024.
//

import Foundation

final class MockRelay: RelayProvider {
    func loadModule(_ fileURL: URL, completion: @escaping (Result<Module, any Error>) -> Void) {
        completion(.failure("Unimplemented"))
    }
    
    // MARK: General Functions
    
    func info(_ url: String, completion: @escaping (Result<InfoData, any Error>) -> Void) async {
        completion(.failure("Unimplemented"))
    }
    
    func search(_ url: String, completion: @escaping (Result<SearchResult, any Error>) -> Void, _ page: Int) async {
        completion(.failure("Unimplemented"))
    }
    
    func discover(completion: @escaping (Result<[DiscoverSection], any Error>) -> Void) async {
        completion(.failure("Unimplemented"))
    }
    
    func media(_ url: String, completion: @escaping (Result<[MediaList], any Error>) -> Void) async {
        completion(.failure("Unimplemented"))
    }
    
    // MARK: Video Content
    
    func sources(_ url: String, completion: @escaping (Result<[SourceList], any Error>) -> Void) async {
        completion(.failure("Unimplemented"))
    }
    
    func streams(_ url: String, completion: @escaping (Result<MediaStream, any Error>) -> Void) async {
        completion(.failure("Unimplemented"))
    }
    
    // MARK: Book content
    
    func pages(_ url: String, completion: @escaping (Result<[String], any Error>) -> Void) async {
        completion(.failure("Unimplemented"))
    }
    
    // MARK: Helpers
    
    func getCurrentModuleType(completion: @escaping (Result<ModuleType, any Error>) -> Void) {
        completion(.failure("Unimplemented"))
    }
}
