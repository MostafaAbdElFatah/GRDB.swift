//
//  AppDatabasew.swift
//  CRUDSwift
//
//  Created by Mostafa on 11/17/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//
import GRDB
import Foundation

struct AppDatabase {
    
    /// Creates a fully initialized database at path
    static func openDatabase(atPath path: String) throws -> DatabaseQueue {
        let dbQueue = try DatabaseQueue(path: path)
        return dbQueue
    }
}
