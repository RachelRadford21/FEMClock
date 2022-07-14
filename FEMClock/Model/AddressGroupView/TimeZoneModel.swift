//
//  TimeZoneModel.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/9/22.
//

import Foundation

struct TimeZone: Codable {
    let name: String
    let offset: Int
    let currentTime: String
    let currentTimeUnix: Double
    let isDst: Bool
    let dstSavings: Int

    enum CodingKeys: String, CodingKey {
        case name, offset
        case currentTime = "current_time"
        case currentTimeUnix = "current_time_unix"
        case isDst = "is_dst"
        case dstSavings = "dst_savings"
    }
}
