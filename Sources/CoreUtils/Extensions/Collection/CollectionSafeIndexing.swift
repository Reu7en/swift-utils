//
//  CollectionSafeIndexing.swift
//  swift-utils
//
//  Created by Reuben on 22/12/2024.
//

import Foundation

public extension Collection {
    subscript(safe index: Index) -> Element? {
        return self.indices.contains(index) ? self[index] : nil
    }
}
