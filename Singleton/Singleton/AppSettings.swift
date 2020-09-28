//
//  AppSettings.swift
//  Singleton
//
//  Created by Burak Furkan Asilturk on 28.09.2020.
//

import Foundation

final public class AppSettings {

    static let shared = AppSettings()

    private let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
    private var settings = [String: Any]()

    private init() {}


    func set(value: Any, key: String) {
        // thread - safe
        concurrentQueue.async(flags: .barrier) { // async.
            self.settings[key] = value
        }
    }

    func get(forKey key: String) -> Any? {
        // thread - safe
        concurrentQueue.sync { // syncronize.
            return self.settings[key]
        }
    }
    
}
