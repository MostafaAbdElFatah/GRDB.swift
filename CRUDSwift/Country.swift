//
//  Country.swift
//  CRUDSwift
//
//  Created by Mostafa on 11/17/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import GRDB
import Foundation

struct Country:Codable{
    let id: Int
    let name: String
    let calcMethod: Int
    let daylightSaving: Bool
}

extension Country : FetchableRecord {
    init(row: Row) {
        id = row["CountryID"]
        name = row["CountryName"]
        calcMethod = row["calcMethod"]
        daylightSaving = row["DaylightSaving"]
    }
}


struct City:Codable{
    let countryId: Int
    let name: String
    let longtude: Double
    let latitude: Double
    let timeZone: Int
}
//CREATE TABLE city (CountryID NUMERIC, Name TEXT, Longitude NUMERIC, Latitude NUMERIC, TimeZone NUMERIC)

extension City : FetchableRecord {
    init(row: Row) {
        countryId = row["CountryID"]
        name = row["Name"]
        longtude = row["Longitude"]
        latitude = row["Latitude"]
        timeZone = row["TimeZone"]
    }
}

