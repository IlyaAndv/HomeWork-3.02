//
//  Person.swift
//  HomeWork 3.02
//
//  Created by Илья on 10.09.2023.
//

import Foundation

struct Person: Decodable {
    let results: [User]
    let info: Info
}

struct User: Decodable {
    let gender: String
    let name: Name
    let location: Location
    let email: String
    let login: Login
    let dob: DataAndAge
    let registered: DataAndAge
    let phone: String
    let cell: String
    let id: Id
    let picture: Picture
    let nat: String
}

struct Name: Decodable {
    let title: String
    let first: String
    let last: String
}

struct Location: Decodable {
    let street: Street
    let city: String
    let state: String
    let country: String
    let postcode: Int
    let coordinates: Coordinates
    let timezone: Timezone
}

struct Street: Decodable {
    let number: Int
    let name: String
}

struct Coordinates: Decodable {
    let latitude: String
    let longitude: String
}

struct Timezone: Decodable {
    let offset: String
    let description: String
}

struct Login: Decodable {
    let uuid: String
    let username: String
    let password: String
    let salt: String
    let md5: String
    let sha1: String
    let sha256: String
}

struct DataAndAge: Decodable {
    let date: String
    let age: Int
}

struct Id: Decodable {
    let name: String
    let value: String
}

struct Picture: Decodable {
    let large: URL
    let medium: URL
    let thumbnail: URL
}

struct Info: Decodable {
    let seed: String
    let results: Int
    let page: Int
    let version: String
}
