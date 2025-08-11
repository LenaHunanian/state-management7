//
//  ContentView.swift
//  stateManagment7
//
//  Created by Lena Hunanian on 11.08.25.
//

import SwiftUI

struct ContentView: View {
    @State private var counterObject = CounterObject()
    
    var body: some View {
        VStack {
            Spacer()
            FirstChildView(counterObj: counterObject)
            Spacer()
            SecondChildView(counterObj: counterObject)
            Spacer()
            
            //just optional "reset" button from my side :)
            Button("Reset") {
                counterObject.counter = 0
            }
        }
        .padding()
    }
}

struct FirstChildView: View {
    var counterObj: CounterObject
    
    var body: some View {
        VStack(spacing: 20){
            Text("Incremented count from first child view: \(counterObj.counter)")
            Button("Increment") {
                counterObj.increment()
            }
        }
        
        
    }
    
}

struct SecondChildView: View {
    var counterObj: CounterObject
    var body: some View {
        VStack(spacing: 20){
            Text("Incremented count from second child view: \(counterObj.counter)")
            Button("Increment") {
                counterObj.increment()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
