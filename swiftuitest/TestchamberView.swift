//
//  TestchamberView.swift
//  swiftuitest
//
//  Created by Marquis Kurt on 6/6/19.
//  Copyright © 2019 Hyperspace Developers. All rights reserved.
//

import SwiftUI

struct TestchamberView : View {
    
    var chamber: Testchamber
    
    var body: some View {
        VStack {
            
            Image(chamber.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                Text("Supervisor: \(chamber.managedBy)")
                    .font(.headline)
                Text("Chamber Notes")
                
                Text(chamber.announcement)
                    .multilineTextAlignment(.leading)
                    .lineLimit(20)
                    .foregroundColor(.gray)
                
                Text("Element Composition")
                
                Text(chamber.elementsAsString)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                }
                
            }
                .padding(.all)
            
        }
            .navigationBarTitle(Text("Testchamber \(chamber.number)"))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

#if DEBUG
struct TestchamberView_Previews : PreviewProvider {
    static var previews: some View {
        TestchamberView(chamber: sampleTests[0])
    }
}
#endif
