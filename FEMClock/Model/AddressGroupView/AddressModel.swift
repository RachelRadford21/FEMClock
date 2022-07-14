//
//  AddressModel.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/9/22.
//

import Foundation

struct Address: Codable {
    let ip, continentCode, continentName, countryCode2: String
    let countryCode3, countryName, countryCapital, stateProv: String
    let district, city, zipcode, latitude: String
    let longitude: String
    let isEu: Bool
    let callingCode, countryTLD, languages: String
    let countryFlag: String
    let geonameID, isp, connectionType, organization: String
    let currency: Currency
    let timeZone: TimeZone

    enum CodingKeys: String, CodingKey {
        case ip
        case continentCode = "continent_code"
        case continentName = "continent_name"
        case countryCode2 = "country_code2"
        case countryCode3 = "country_code3"
        case countryName = "country_name"
        case countryCapital = "country_capital"
        case stateProv = "state_prov"
        case district, city, zipcode, latitude, longitude
        case isEu = "is_eu"
        case callingCode = "calling_code"
        case countryTLD = "country_tld"
        case languages
        case countryFlag = "country_flag"
        case geonameID = "geoname_id"
        case isp
        case connectionType = "connection_type"
        case organization, currency
        case timeZone = "time_zone"
    }
}


