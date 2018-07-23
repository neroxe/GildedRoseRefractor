//
//  ItemProtocol.swift
//  GildedRoseRefractor
//
//  Created by Zakaria CHAFIK on 22/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

public protocol IItem {
    var name: String { get set }
    var sellIn: Int { get set }
    var quality: Int { get set }
    var description : String { get }
    
    func updateQuality()
}
