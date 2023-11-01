//
//  AppEnviroment.swift
//  CoffeOrder
//
//  Created by Seymen Nadir Elmas on 1.11.2023.
//

import Foundation

enum Endpoints {
    case allOrders
    var path : String {
        switch self {
        case.allOrders :
            return  "/test/orders"
        }
    }
}
struct Configuration{
    lazy var enviroment : AppEnviroment = {
        
        guard let env = ProcessInfo.processInfo.environment ["ENV"] else {
            return AppEnviroment.dev
        }
        if env == "TEST"{
            return AppEnviroment.test
        }
        return AppEnviroment.dev
    }()
}

enum AppEnviroment {
    case dev
    case test
    var baseUrl :URL {
        switch self {
        case.dev :
            return URL(string: "https://island-bramble.glitch.me")!
        case.test:
            return URL(string: "https://www.test.island-bramble.glitch.me")!
        
        }
    }
}
