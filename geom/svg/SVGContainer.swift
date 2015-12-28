import Cocoa
/**
 * SVGContainer serves as a Sprite but also has an id and an array that keeps track of the added items
 * // :TODO: could we omit the _items and just use the display-stack as a record of items added?
 * // :TODO: we need a remove method to compliment the add method
 */
class SVGContainer : NSView, ISVGContainer{
    var items : Array<ISVGElement> = [];
    var id : String
    init(items:Array<ISVGElement>, id:String) {
        super.init()
        for item : ISVGElement in items { add(item) }
        self.id = id;
    }
    
    /**
     * @param item (SVGGraphic and elements like SVGLinearGradient)
     */
    func add(element:ISVGElement) {
        if(element is NSView) { addSubview(element as! NSView) }
        items.append(element);
    }
    
    /**
     * Asserts and returns an svg item by @param id
     */
    func getItem(id:String)->ISVGElement?{
        for item : ISVGElement in items{ if(item.id/*["id"]*/ == id) {return item}}; return nil;
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}
