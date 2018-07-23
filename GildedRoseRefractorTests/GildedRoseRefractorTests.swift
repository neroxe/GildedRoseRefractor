//
//  GildedRoseRefractorTests.swift
//  GildedRoseRefractorTests
//
//  Created by Zakaria CHAFIK on 20/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import XCTest
@testable import GildedRoseRefractor

class GildedRoseRefractorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Item_should_return_nil_name_is_empty() {
        let item = Item(name: "", sellIn: 10, quality: 0)
        XCTAssertNil(item)
    }

    func test_Item_check_description() {
        let item = Item(name: "toto", sellIn: 10, quality: 0);
        XCTAssertEqual(item?.description, "Item : toto , Sell in : 10 , Quality : 0")
    }
    
    func test_Item_should_return_SellIn_9_quality_0_When_sellIn_10_quality_0() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Item(name: "normalItem", sellIn: 10, quality: 0));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(9, item?.sellIn);
        XCTAssertEqual(0, item?.quality);
    }
    
    func test_Item_should_return_sellIn_Minus_1_quality_48_When_sellIn_0_quality_50() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Item(name: "normalItem", sellIn: 0, quality: 50));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(-1, item?.sellIn);
        XCTAssertEqual(48, item?.quality);
    }

    
    func test_AgedBrie_should_return_sellIn_9_quality_2_when_sellIn_10_quality_1() {
        let gildedRose = GildedRose()
        gildedRose.addItem(AgedBrie(name: "Aged Brie", sellIn: 10, quality: 1));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(9, item?.sellIn);
        XCTAssertEqual(2, item?.quality);
    }
    
    func test_AgedBrie_should_return_sellIn_minus_2_quality_50_when_sellIn_minus_1_quality_50() {
        let gildedRose = GildedRose()
        gildedRose.addItem(AgedBrie(name: "Aged Brie", sellIn: -1, quality: 50));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(-2, item?.sellIn);
        XCTAssertEqual(50, item?.quality);
    }
    
    func test_AgedBrie_should_return_sellIn_minus_2_quality_22_when_sellIn_minus_1_quality_20() {
        let gildedRose = GildedRose()
        gildedRose.addItem(AgedBrie(name: "Aged Brie", sellIn: -1, quality: 20));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(-2, item?.sellIn);
        XCTAssertEqual(22, item?.quality);
    }
    
    func test_Sulfuras_should_return_sellIn_10_quality_80_when_sellIn_10_quality_80() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Sulfuras(name: "Sulfuras, Hand of Ragnaros", sellIn: 10, quality: 80));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(10, item?.sellIn);
        XCTAssertEqual(80, item?.quality);
    }
    
    func test_BackstagePasses_should_return_sellIn_9_quality_32_when_sellIn_10_quality_30() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Backstage(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 30));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(9, item?.sellIn);
        XCTAssertEqual(32, item?.quality);
    }
    
    func test_BackstagePasses_should_return_sellIn_3_quality_3_when_sellIn_4_quality_0() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Backstage(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 4, quality: 0));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(3, item?.sellIn);
        XCTAssertEqual(3, item?.quality);
    }
    
    func test_BackstagePasses_should_return_sellIn_Minus_1_quality_0_when_sellIn_0_quality_10() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Backstage(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 0, quality: 10));
        gildedRose.updateQuality();
        let item = gildedRose.getLastItem()
        XCTAssertEqual(-1, item?.sellIn);
        XCTAssertEqual(0, item?.quality);
    }
    
    func test_Conjure_should_return_sellIn_Minus_2_quality_4_when_sellIn_3_quality_6() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Conjured(name: "Conjured Mana Cake", sellIn: 3, quality: 6))
        gildedRose.updateQuality()
        let item = gildedRose.getLastItem()
        XCTAssertEqual(2, item?.sellIn);
        XCTAssertEqual(4, item?.quality);
    }
    
    func test_Conjure_should_return_sellIn_Minus_2_quality_2_when_sellIn_Minus_1_quality_6() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Conjured(name: "Conjured Mana Cake", sellIn: -1, quality: 6))
        gildedRose.updateQuality()
        let item = gildedRose.getLastItem()
        XCTAssertEqual(-2, item?.sellIn);
        XCTAssertEqual(2, item?.quality);
    }
    
    func test_Conjure_should_return_sellIn_Minus_2_quality_0_when_sellIn_Minus_1_quality_2() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Conjured(name: "Conjured Mana Cake", sellIn: -1, quality: 2))
        gildedRose.updateQuality()
        let item = gildedRose.getLastItem()
        XCTAssertEqual(-2, item?.sellIn);
        XCTAssertEqual(0, item?.quality);
    }
    
    func test_Conjure_should_return_sellIn_0_quality_0_when_sellIn_1_quality_1() {
        let gildedRose = GildedRose()
        gildedRose.addItem(Conjured(name: "Conjured Mana Cake", sellIn: 1, quality: 1))
        gildedRose.updateQuality()
        let item = gildedRose.getLastItem()
        XCTAssertEqual(0, item?.sellIn);
        XCTAssertEqual(0, item?.quality);
    }
    
    
}
