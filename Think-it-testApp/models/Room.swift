//
//  Room.swift
//  Think-it-testApp
//
//  Created by Firas CHOUACHI on 11/19/20.
//  Copyright © 2020 Firas CHOUACHI. All rights reserved.
//

import Foundation

struct Room {
 private(set) public  var roomName: String
    private(set) public  var  deviceNumber: String
    private(set) public  var  roomImageName: String
    
    
    
    init(roomName: String, deviceNumber: String , roomImageName: String){
        
        self.roomName = roomName
        self.deviceNumber  = deviceNumber
        self.roomImageName = roomImageName
        
        
    }
}
