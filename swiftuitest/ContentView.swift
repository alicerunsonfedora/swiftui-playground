//
//  ContentView.swift
//  swiftuitest
//
//  Created by Marquis Kurt on 6/5/19.
//  Copyright © 2019 Hyperspace Developers. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var tests: [Testchamber] = []
    
    var body: some View {
        NavigationView {
            List(tests) { test in
                NavigationButton(destination: TestchamberView(chamber: test)) {
                    VStack(alignment: .leading) {
                        Text("Testchamber \(test.number)")
                        Text("Supervisor: \(test.managedBy)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
                .navigationBarTitle(Text("Chambers"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(tests: sampleTests)
    }
}
#endif
