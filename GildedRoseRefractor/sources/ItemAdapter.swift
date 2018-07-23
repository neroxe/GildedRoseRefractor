//
//  ItemAdapter.swift
//  GildedRoseRefractor
//
//  Created by Zakaria CHAFIK on 23/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import Cocoa

class ItemAdapter: NSObject {
    static func adaptItem(name: String, sellIn: Int, quality: Int) -> Item?{
        switch name {
            case SULFURAS:
                return Sulfuras(name: name, sellIn: sellIn, quality: quality)
            
            case AGEDBRIE:
                return AgedBrie(name: name, sellIn: sellIn, quality: quality)
            
            case CONJURED:
                return Conjured(name: name, sellIn: sellIn, quality: quality)
            
            case BACKSTAGE:
                return Backstage(name: name, sellIn: sellIn, quality: quality)
            
            default:
                return Item(name: name, sellIn: sellIn, quality: quality)
            }
    }
}
