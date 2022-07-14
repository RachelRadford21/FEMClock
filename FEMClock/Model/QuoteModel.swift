//
//  QuoteModel.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/8/22.
//

import Foundation

struct Quote: Codable {
    let id, author, en: String
}

typealias Welcome = [Quote]
