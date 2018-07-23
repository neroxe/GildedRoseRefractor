//
//  AgedBrie.swift
//  GildedRoseRefractor
//
//  Created by Zakaria CHAFIK on 22/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import Cocoa

class AgedBrie: Item {
    override public func updateQuality(){
        if (self.quality < MaxQualityThreshold) {
            self.quality = self.quality + 1
        }
        self.sellIn = self.sellIn - 1
        if (self.sellIn < MinSellinThreshold
            && self.quality < MaxQualityThreshold) {
            self.quality = self.quality + 1
        }
    }
}
