//
//  ViewController.swift
//  CRUDSwift
//
//  Created by Mostafa on 11/17/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import GRDB
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Modify the database:
        try? dbQueue.write { db in
            try db.execute(sql: """
        CREATE TABLE place (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            latitude DOUBLE,
            longitude DOUBLE)
        """)
            try? db.execute(
                sql: "INSERT INTO place (name, latitude, longitude) VALUES (?, ?, ?)",
                arguments: ["Barbara", 12.65643686843,52.615525455])
            try? db.execute(
                sql: "INSERT INTO place (name, latitude, longitude) VALUES (?, ?, ?)",
                arguments: ["Barbara2", 12.65643686843,52.615525455])
            try? db.execute(
                sql: "INSERT INTO place (name, latitude, longitude) VALUES (?, ?, ?)",
                arguments: ["Barbara3", 12.65643686843,52.615525455])
            try? db.execute(
                sql: "INSERT INTO place (name, latitude, longitude) VALUES (?, ?, ?)",
                arguments: ["Barbara4", 12.65643686843,52.615525455])
        }
    
//        guard let places = try? dbQueue.read { db in
//            try Place.fetchAll(db, sql: "SELECT * FROM place")
//        } else { return}
        
        try? dbQueue.read({ (db)  in
            let places = try Place.fetchAll(db, sql: "SELECT * FROM place")
            print(places)
        })
    }


}

