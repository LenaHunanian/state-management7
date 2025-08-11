//
//  Counter.swift
//  stateManagment7
//
//  Created by Lena Hunanian on 11.08.25.
//
import SwiftUI
import Observation

@Observable
class CounterObject {
    var counter: Int = 0
    
    func increment() {
        counter += 1
    }
}
