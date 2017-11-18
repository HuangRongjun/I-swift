//
//  Mayor.swift
//  BigNerdRanch
//
//  Created by iCrazyMage on 19/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel = 0
    mutating func anxious () {
        anxietyLevel += 1
        print("Anxiety level \(anxietyLevel)")
    }
    
    func offerCondolences() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
    
}
