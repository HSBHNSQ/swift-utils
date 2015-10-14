import Foundation
class FileParser{
	/*
	 * Returns string content from a file at file location "path"
     * PARAM path is the file path to the file
     * Todo: What format is the path?
	 */
	class func content(path:String)->String?{
        do {
            let content = try String(contentsOfFile: path, encoding: NSUTF8StringEncoding) as String//encoding: NSUTF8StringEncoding
            return content
        } catch {
            // contents could not be loaded
            return nil
        }
        
	}
	/**
	 * Returns the project resource folder
	 * NOTE: https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSBundle_Class/
	 */
    class func resourcePath()->String{
		return NSBundle.mainBundle().resourcePath!
	}
    /**
     * resourceContent("example","txt")
     */
    class func resourceContent(fileName:String, _ fileExtension:String)->String?{
        if let filepath = NSBundle.mainBundle().pathForResource(fileName, ofType:fileExtension ) {
            content(filepath)
        } else {
            // example.txt not found!
        }
    }
}