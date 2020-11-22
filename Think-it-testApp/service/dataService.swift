//
//  dataService.swift
//  Think-it-testApp
//
//  Created by Firas CHOUACHI on 11/19/20.
//  Copyright © 2020 Firas CHOUACHI. All rights reserved.
//

import Foundation
class DataServie {
    
    static let instance = DataServie()
    
    private let Rooms = [
        
        Room(roomName: "Living Room", deviceNumber: "4 Devices", roomImageName: "livingroom"),
        Room(roomName: "Media Room", deviceNumber: "6 Devices", roomImageName: "mediaroom"),
        
        Room(roomName: "Bathroom", deviceNumber: "1 Device", roomImageName: "bathroom"),
             
        Room(roomName: "Bedroom", deviceNumber: "3 Devices", roomImageName: "bedroom")
        
        
        
        
    ]
    
    func getRooms() -> [Room] {
        return Rooms
        
    }
    
    
}
