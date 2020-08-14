//
//  ConvertN2W.swift
//  N2W
//
//  Created by jubilat services and solutioins on 14/08/20.
//  Copyright © 2020 test. All rights reserved.
//

public class ConvertN2W {
  
    private static let one: [String] = [ "", "one ", "two ", "three ", "four ",
                            "five ", "six ", "seven ", "eight ",
                            "nine ", "ten ", "eleven ", "twelve ",
                            "thirteen ", "fourteen ", "fifteen ",
                            "sixteen ", "seventeen ", "eighteen ",
                            "nineteen " ]
  
    private static let ten: [String] = [ "", "", "twenty ", "thirty ", "forty ",
                            "fifty ", "sixty ", "seventy ", "eighty ",
                            "ninety " ]
  
    private static func numToWords(n: Int, s: String) -> String
    {
        var str: String = "";
        if (n > 19) {
            str += ten[n / 10] + one[n % 10];
        }
        else {
            str += one[n];
        }
  
        if (n != 0) {
            str += s;
        }
  
        return str;
    }
  
    public static func convertToWords(n: Int) -> String
    {
        var out: String = "";
  
        switch n {
            
            case let x where x < 0:
                return "negative number"
            
            case let x where x == 1000000000:
                    return "one hundred crore"
            
            case let x where x > 1000000000:
                return "above one hundred crore"
            
        case let x where x > 0:
            out += numToWords(n: (n / 10000000), s: "crore ");
            out += numToWords(n: ((n / 100000) % 100), s: "lakh ");
            out += numToWords(n: ((n / 1000) % 100), s: "thousand ");
            out += numToWords(n: ((n / 100) % 10), s: "hundred ");
            if (n > 100 && n % 100 > 0) {
            out += "and ";
            }
            out += numToWords(n: (n % 100), s: "");
            return out;
            
        default:
            return "zero"
        }
        
    }
  
}

