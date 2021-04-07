//
//  File.swift
//  
//
//  Created by Admin on 07.04.2021.
//

import Foundation

public struct OrdersLimit {
    var ordersLimit: Int
    var ordersPlaced: Int
    init(_ dictionary: [String: Any]) {
      ordersLimit = dictionary["ordersLimit"] as? Int ?? 0
      ordersPlaced = dictionary["ordersPlaced"] as? Int ?? 0
    }
    init (ordersLimit: Int, ordersPlaced: Int) {
      self.ordersLimit = ordersLimit
      self.ordersPlaced = ordersPlaced
    }
}
