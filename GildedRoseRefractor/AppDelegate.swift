//
//  AppDelegate.swift
//  GildedRoseRefractor
//
//  Created by Zakaria CHAFIK on 20/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let items = [
            ItemAdapter.adaptItem(name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
            ItemAdapter.adaptItem(name: "Aged Brie", sellIn: 2, quality: 0),
            ItemAdapter.adaptItem(name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
            ItemAdapter.adaptItem(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
            ItemAdapter.adaptItem(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
            ItemAdapter.adaptItem(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
            ItemAdapter.adaptItem(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 49),
            ItemAdapter.adaptItem(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 49),
            // this conjured item does not work properly yet
            ItemAdapter.adaptItem(name: "Conjured Mana Cake", sellIn: 3, quality: 6)]
        
        let gildedRose = GildedRose(items: items as! [Item])
        gildedRose.updateQuality()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    


}

