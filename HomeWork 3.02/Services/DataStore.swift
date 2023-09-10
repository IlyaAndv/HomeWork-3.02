//
//  DataStore.swift
//  HomeWork 3.02
//
//  Created by Илья on 10.09.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let url = URL(string: "https://randomuser.me/api/")!
    
    private init() {}
}
