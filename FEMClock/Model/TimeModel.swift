//
//  TimeModel.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/8/22.
//

import Foundation

struct Time: Codable {
        let timezone: String
        let timezoneOffset, timezoneOffsetWithDst: Int
        let date, dateTime, dateTimeTxt, dateTimeWti: String
        let dateTimeYmd: String
        let dateTimeUnix: Double
        let time24, time12: String
        let week, month, year: Int
        let yearAbbr: String
        let isDst: Bool
        let dstSavings: Int

        enum CodingKeys: String, CodingKey {
            case timezone
            case timezoneOffset = "timezone_offset"
            case timezoneOffsetWithDst = "timezone_offset_with_dst"
            case date
            case dateTime = "date_time"
            case dateTimeTxt = "date_time_txt"
            case dateTimeWti = "date_time_wti"
            case dateTimeYmd = "date_time_ymd"
            case dateTimeUnix = "date_time_unix"
            case time24 = "time_24"
            case time12 = "time_12"
            case week, month, year
            case yearAbbr = "year_abbr"
            case isDst = "is_dst"
            case dstSavings = "dst_savings"
        }
}
