//
//  History.swift
//  RoshamboRPS
//
//  Created by Jena Grafton on 4/13/16.
//  Copyright © 2016 Bella Voce Productions. All rights reserved.
//

import Foundation

struct History {
    let matchResult: String
    let matchType: String
    
    init(matchResult: String, matchType: String) {
        self.matchResult = matchResult
        self.matchType = matchType
    }
    
}
