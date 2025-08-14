//
//  ContentView.swift
//  stateManagment7
//
//  Created by Lena Hunanian on 11.08.25.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var counterObject = CounterObject()
    
    var body: some View {
        VStack(spacing: 40){
            FirstChildView(counterObj: counterObject)
            
            SecondChildView(counterObj: counterObject)
            
            
            //just optional "reset" button from my side :)
            Button("Reset") {
                counterObject.counter = 0
            }
            .tint(.red)
        }
        .padding()
    }
}

struct FirstChildView: View {
  @Bindable  var counterObj: CounterObject
    
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
  @Bindable  var counterObj: CounterObject
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


#Preview {
    ContentView()
}
