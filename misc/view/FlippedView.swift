import Cocoa
import Foundation
protocol IView{
    var layer: CALayer?{get}
    var bounds: NSRect{get}
    func addSubview(aView: NSView)
}
class FlippedView:NSView{//Organizes your view from top to bottom
    override var flipped:Bool {
        get {
            return true
        }
    }
}