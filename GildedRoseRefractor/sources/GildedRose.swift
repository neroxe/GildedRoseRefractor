public class GildedRose{
    
    var items:[Item]
    
    required public init() {
        self.items = []
    }
    
    required public init(items: [Item]) {
        self.items = items
    }
    
    public func addItem(_ item: Item?){
        if(item != nil){
            items.append(item!)
        }
    }
    
    public func updateQuality() {
        for i in 0..<items.count {
            let item = items[i]
            item.updateQuality();
        }
    }
    
    public func getLastItem() -> Item? {
        return items.popLast()
    }
}
