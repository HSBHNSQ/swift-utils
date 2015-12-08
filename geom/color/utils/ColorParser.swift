import Cocoa

class ColorParser {/*Covers returning hex colors etc*/
    /**
     * 
     */
    class func hexColor(nsColor:NSColor)->String{
        let rgba = nsColor.rgba
        return ColorUtils.hexString(UInt(rgba.r + rgba.g + rgba.b))
    }
    /**
     * EXAMPLE: rgba(NSColor.redColor()).r//Outputs //1.0
     */
    class func rgba(nsColor:NSColor)->(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat){
        let ciColor:CIColor = CIColor(color: nsColor)!
        return (ciColor.red,ciColor.green,ciColor.blue,ciColor.alpha)
    }
}
