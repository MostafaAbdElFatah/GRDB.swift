//
//  Place.swift
//  CRUDSwift
//
//  Created by Mostafa on 11/17/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//
import GRDB
import Foundation
import CoreLocation

struct Place {
    var id: Int64?
    var name: String
    var coordinate: CLLocationCoordinate2D
}

extension Place : FetchableRecord {
    init(row: Row) {
        id = row["id"]
        name = row["name"]
        coordinate = CLLocationCoordinate2D(
            latitude: row["latitude"],
            longitude: row["longitude"])
    }
}
