/*
                             .-----------------------------------------------------------------------------.
                           /  .-.                                                                      .-.  \
                          |  /   \    Hikarus Guijarro-Fayard - iOS developer specialized in Swift    /   \  |
                          | |\_.  |                     http://ikiteruningen.net                     |    /| |
                          |\|  | /|                 https://github.com/ikiteruningen                 |\  | |/|
                          | `---' |                                                                  | `---' |
                          \       |------------------------------------------------------------------|       /
                           \     /                                                                    \     /
                            `---'                                                                      `---'
*/

internal extension Array {
   
   var isNotEmptyⓑ: Bool { return !self.isEmpty }
   var maxIndex＃: Int { return self.count - 1 }
   
   // returns a sub-array from the specified integer range
   subscript(start＃: Int, end＃: Int) -> Array<Element> {
      let maxEnd＃ = min(self.maxIndex＃, end＃)
      var output🅐: Array<Element> = []
      for index＃ in 0...maxEnd＃ { output🅐.append(self[index＃]) }
      return output🅐
   }
   
   // functions for stack operations
   mutating func clear() { self.removeAll() }
   mutating func pushElement(element: Element) { self.append(element) }
   mutating func popElement() -> Element { return self.removeLast() }
   mutating func popElements(numberOfElements＃ numberOfElements＃: Int, FIFOⓑ: Bool = false) -> [Element] {
      var output🅐 = [Element](); var counter = 1
      for element﹖ in self.reverse() {
         output🅐.append(element﹖)
         counter += 1; if counter > numberOfElements＃ { break }
      }
      return FIFOⓑ ? output🅐.reverse() : output🅐
   }
   mutating func removeLast(numberOfElements＃ numberOfElements＃: Int) { for _ in 1...numberOfElements＃ { self.removeLast() } }
   mutating func pluck(atIndex itemIndex＃: Int = 0) -> Element { return self.removeAtIndex(itemIndex＃) }
   func last·n·Elements🅐(numberOfElements＃ numberOfElements＃: Int) -> [Element] {
      var outputArray🅐 = [Element]()
      for elementIndex＃ in (self.count - numberOfElements＃)..<self.count { outputArray🅐.append(self[elementIndex＃]) }
      return outputArray🅐
   }
   var lastElement: Element? {
      get { return self.last }
      set { self[self.maxIndex＃] = newValue! }
   }
   var penultimateElement: Element? {
      if self.count > 1 { return self[self.count - 2] }
      return nil
   }
}

/* VARIABLE-TYPE SUFFIX CRITERION ----------------------------------------------------------------------------------------

I've built a custom keyboard layout to include these suffix I find very useful in my code
Some characters like { ＃ ＋ ﹙﹚ ﹖ ﹫} have resemblance to the standard pound, plus, parenthesis, question mark, At-Sign...
but are really alternate ASCII characters that can perfectly be used in Swift code

you can of course remove them from the code :)

Boolean              ⓑ
String               $
number               ＃
Int                  ＃i
Float                ＃f
Double               ＃d
CGFloat              ⓖ
CGPoint              ⓖ²    2 dimensional CGFloats
CGRect               ⓖ⁴    4 dimensional CGFloats
Binary/Data          ß     For NSData, and images or videos in CoreData
Core Image           ⓘ
NSDate               ㊐
Object               🅞
Tuple                🅣
Array                🅐
Set                  ...     ? not sure about this one...
Dictionary           🅓
Enumeration          🅔
Structure            🅢
Library Class        ＋     (suffix)
Additive parameter   ＋     (prefix)
Complex Structure    ﹙﹚
Undetermined         ﹖     for Undetermined types: Optional or AnyObject
Implicitly unwrapped ﹗
Protocol             Ⓟ
Function             ƒ
Pointer              ⓟ⃗
PhotoAsset           ⓐ
Collection           🅒
URL                  🅤
IBOutlets            ﹫

Example: an array of dictionaries with a string key which value is a tuple of an enum and a number
myVariable＃🅔🅣$🅓🅐

----------------------------------------------------------------------------------------------------------------- */
