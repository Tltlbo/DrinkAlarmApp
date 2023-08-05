//
//  Alert.swift
//  DrinkAlarmApp
//
//  Created by 박진성 on 2023/08/05.
//

import Foundation


struct Alert : Codable {
    var id : String = UUID().uuidString
    let date : Date
    var isOn : Bool
    var time : String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        return timeFormatter.string(from: date)
    }
    
    var merdiem : String {
        let meridiemFormatter = DateFormatter()
        meridiemFormatter.dateFormat = "a"
        meridiemFormatter.locale = Locale(identifier: "ko")
        return meridiemFormatter.string(from: date)
    }
    
}
