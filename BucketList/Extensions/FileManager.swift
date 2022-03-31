//
//  FileManager.swift
//  BucketList
//
//  Created by Andres camilo Raigoza misas on 29/03/22.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    func decode<T:Codable>() -> T {
        let url = FileManager.documentsDirectory
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load data from url: \(url)")
        }
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode data from url: \(url) from bundle.")
        }
        return loaded
    }
}
