//
//  Alert.swift
//  HomeWork 3.02
//
//  Created by Илья on 10.09.2023.
//

enum Alert {
    case success
    case failed
    
    var title: String {
        switch self {
        case .success:
            return "Success!"
        case .failed:
            return "Failed!"
        }
    }
    
    var message: String {
        switch self {
        case .success:
            return "You can see the results in the Debug area."
        case .failed:
            return "You can see error in the Debug area."
        }
    }
}
