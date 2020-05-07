//
//  ActualEvents.swift
//  HackIllinois Event App
//
//  Created by Rohan on 5/4/20.
//  Copyright © 2020 Rohan. All rights reserved.
//

import Foundation

struct ActualEvents: Codable {
    
    var id:String?
    var name:String?
    var description:String?
    var startTime:Int64
    var endTime:Int64?
    var locations:[Locations]
    var sponsor:String?
    var eventType:String?
    
}
