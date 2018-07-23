//
//  Item.swift
//  GildedRoseRefractor
//
//  Created by Zakaria CHAFIK on 22/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import Cocoa

public class Item: NSObject, IItem {
    
    public var name: String
    public var sellIn: Int
    public var quality: Int
    
    override public var description: String {
        get{
            return "Item : \(self.name) , Sell in : \(self.sellIn) , Quality : \(self.quality)"
        }
    }
    
    public init?(name: String, sellIn: Int, quality: Int)
    {
        guard !name.isEmpty else {
            return nil
        }
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
    
    public func updateQuality() {
        if (self.quality > MinQualityThreshold) {
            self.quality = self.quality - 1
        }
        self.sellIn = self.sellIn - 1
        if (self.sellIn < MinSellinThreshold) {
            if (self.quality > MinQualityThreshold) {
                self.quality = self.quality - 1
            }
        }
    }

}
