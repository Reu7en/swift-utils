//
//  CollectionSafeIndexingTests.swift
//  swift-utils
//
//  Created by Reuben on 22/12/2024.
//

import Testing
import CoreUtils

struct CollectionSafeIndexingTests {
    @Test func validIndicies_ReturnCorrectElements() async throws {
        let collection: [Int] = [1, 2, 3]
        
        #expect(collection[safe: 0] == 1)
        #expect(collection[safe: 1] == 2)
        #expect(collection[safe: 2] == 3)
    }

    @Test func invalidIndex_ReturnsNil() async throws {
        let collection: [Int] = [1, 2, 3]
        
        #expect(collection[safe: 3] == nil)
    }
    
    @Test func emptyCollection_ReturnsNil() async throws {
        let collection: [Int] = []
        
        #expect(collection[safe: 0] == nil)
    }
    
    @Test func negativeIndex_ReturnsNil() async throws {
        let collection: [Int] = [1, 2, 3]
        
        #expect(collection[safe: -1] == nil)
    }
}
