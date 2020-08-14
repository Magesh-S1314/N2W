//
//  ContentView.swift
//  N2W
//
//  Created by jubilat services and solutioins on 14/08/20.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var input = NumbersOnly()
    
    var body: some View {
        VStack{
            TextField("Enter the number", text: $input.value)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.largeTitle)
                .padding()
                
            Text("\(input.num)").frame(maxWidth: .infinity, alignment: .leading).padding()

        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(input: NumbersOnly())
    }
}
