//
//  Constants.swift
//  GildedRoseRefractor
//
//  Created by Zakaria CHAFIK on 20/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

let SULFURAS = "Sulfuras, Hand of Ragnaros"
let BACKSTAGE = "Backstage passes to a TAFKAL80ETC concert"
let CONJURED = "Conjured Mana Cake"
let AGEDBRIE = "Aged Brie"

let MaxQualityThreshold = 50
let MinQualityThreshold = 0
let MinSellinThreshold = 0
let MinSellinBackstageFirstThreshold = 11
let MinSellinBackstageSecondThreshold = 6

// Defining errors
enum itemError: Error {
    case emptyName
    case notFound
}

