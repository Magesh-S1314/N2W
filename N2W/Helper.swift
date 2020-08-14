//
//  Helper.swift
//  N2W
//
//  Created by jubilat services and solutioins on 14/08/20.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation

class NumbersOnly: ObservableObject {
    
    @Published var value = "" {
        didSet {
            if value.count <= 10{
                let filtered = value.filter { $0.isNumber }
                
                if value != filtered {
                    value = filtered
                }
            }else{value.removeLast()}
        }
        willSet{
            if let n = Int(newValue){
                num = ConvertN2W.convertToWords(n: n)
            }else{num = ""}
        }
    }
    @Published var num = ""
}
