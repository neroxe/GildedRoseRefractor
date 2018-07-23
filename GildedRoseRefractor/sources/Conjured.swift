//
//  Conjured.swift
//  GildedRoseRefractor
//
//  Created by Zakaria CHAFIK on 22/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import Cocoa

class Conjured: Item {
    override public func updateQuality(){
        if (self.quality > MinQualityThreshold+1) {
            self.quality = self.quality - 2
        }
        else{
            self.quality = MinQualityThreshold
        }
        self.sellIn = self.sellIn - 1
        if (self.sellIn < MinSellinThreshold) {
            if (self.quality > MinQualityThreshold+1) {
                self.quality = self.quality - 2
            }
            else{
                self.quality = MinQualityThreshold
            }
        }
    }
}
