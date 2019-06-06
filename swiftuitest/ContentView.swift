//
//  ContentView.swift
//  swiftuitest
//
//  Created by Marquis Kurt on 6/5/19.
//  Copyright © 2019 Hyperspace Developers. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
