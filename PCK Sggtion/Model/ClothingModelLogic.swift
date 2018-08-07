//
//  ClothingModelLogic.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/6/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import Foundation

struct ClothingModelLogic{
    
    static func getClothing(temp: Double, gender: Gender) -> [String]{
        
        switch gender{
        case .male:
            print("This is a male")
            
            switch temp {
                
            case 100...1000:
                return["Light Colored Tee Shirt","Athletic Shorts","Sandals","Safari Hat","Sneakers", "Bathing Suit", "Short Sleeved Night Shirt","Loose Underwear", "Short Cut Socks", "Sunglasses", "Cargo Shorts", "Polo Shirt", "Short Sleeve Button Up" ]
            case 90...99:
                return["Sandals","Sneakers","Dress Shorts","Bathing Suit","Short Sleeve Button Up","Light Colored Shirts","Loose Underwear","Short Sleeve Night Wear","Athletic Shorts","Polo Shirt","Light Windbreaker","Athletic Shirt","Baseball Cap","Sunglasses", "Short Cut Socks","Dress socks","Muscle Tee"]
            case 75...89:
                return["Light Short Sleeve Shirts","Athletic Shorts","Bathing Suit","Athletic Shirt","Dress Shorts","Khaki Pants","Button Down Short Sleeve Shirt","Light Jacket","Windbreaker","Button Down Long Sleeve","Polo Shirt","Sunglasses","Short Cut Socks","Muscle Tee","Jeans","Underwear"]
            case 60...74:
                return ["Short Sleeve Casual Shirts","Long Sleeve Casual Wear Shirts","Athletic Shorts","Bathing Suit","Athletic Shirt","Dress Shorts","Khaki Pants","Button Down Short Sleeve Shirt","Button Down Long Sleeve","Jacket","Windbreakers","Button Down Long Sleeve","Polo Shirt","Sunglasses","Short Cut Socks","Long Cut Socks","Muscle Tee","Jeans","Sweatpants","Sneakers","Sandals","Underwear"]
            case 50...59:
                return["Long Sleeve Casual Shirts","Sweater","Light Scarf","Hat that Covers Ears","Button Down Long Sleeve Shirt","Long Sleeve Pajama Shirt","Pajama Pants","Kahki Pants", "Jeans", "Sweatpants","Sneakers","Boots","Thick Socks","Jacket","Underwear"]
            case -50...49:
                return ["Long Sleeve Casual Shirts","Heavy Sweaters","Heavy Scarf","Winter Hat","Button Down Long Sleeve Shirt","Long Sleeve Pajama Shirt","Pajama Pants","Khaki Pants","Snow Pants", "Jeans", "Sweatpants","Sneakers","Snow Boots","Thick Socks","Jacket","Bulky Underwear","Gloves","Jacket","Sport Jacket","Dress Pants","Long Sleeve Dress Shirt"]
            default:
                return ["Hi there, Couldn't get any suggestion! Please try one more time"]
                
            }
        case .female:
            switch temp {
            case 100...1000:
                return["Tank Tops","T-Shirts","Underwear","Socks","Bra","Gym Bra","Bathing Suit","Casual Shorts", "Short Sleeve Dress Shirt","Dress Shorts","Sun Hat","Sunglasses","Summer Dress","Sneakers","Flip Flops"]
            case 90...99:
                return["Casual Dress","Dress shorts","Underwear","Bra","Sandals","Cardigan","Leggings","Short Sleeved Shirt","Bathing Suit","Light Sweater","Sneakers","Athletic Shirt","Sports Bra","Long Sleeve Shirt","Jeggings","Jeans","Summer Dress","Dress Shoes","Formal Dress","Sun Hat","Casual Socks","Liners","Flip Flops"]
            case 75...89:
                return["Casual Dress","Summer Dress","Windbreaker","Underwear","Bra","Sandals","Cardigan","Leggings","Short Sleeved Shirt","Bathing Suit","Light Sweater","Sneakers","Athletic Shirt","Sports Bra","Long Sleeve Shirt","Jeggings","Jeans","Yoga Pants","Casual Socks","Liners","Flip Flops","Sweatshirt","Sunglasses","Hat for the Sun"]
            case 60...74:
                return["Casual Dress","Summer Dress","Windbreakers","Underwear","Bra","Sandals","Cardigan","Leggings","Short Sleeved Shirt","Bathing Suit","Light Sweater","Sneakers","Athletic Shirt","Sports Bra","Long Sleeve Shirt","Jeggings","Jeans","Yoga Pants","Casual Socks","Liners","Flip Flops","Sweatshirt","Sunglasses","Hat to block wind"]
                
            case 50...59:
                return["Casual Dress","Dress shorts","Dress Pants","Underwear","Bra","Sandals","Cardigan","Leggings","Short Sleeved Shirt","Bathing Suit","Light Sweater","Sneakers","Athletic Shirt","Sports Bra","Long Sleeve Shirt","Jeggings","Jeans"]
            case -50...49:
                return["Casual Dress","Dress shorts","Underwear","Bra","Sandals","Cardigan","Leggings","Short Sleeved Shirt","Bathing Suit","Light Sweater","Sneakers","Athletic Shirt","Sports Bra","Long Sleeve Shirt","Jeggings","Jeans"]
                
            default:
                print("This is the default")
                return["hey there, please try one more time"]
            }
        case .none:
            print("None")
        }
        return ["Hello"]
        
    }
}
// Do Error Handling
// Show Location

