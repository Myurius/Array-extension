/************************************************************************
 * @description Extension for the Array class
 * @author Myurius
 * @date 2025/02/22
 * @version 0.0.1
 **********************************************************************
*/
class __ArrExtension extends Array 
{
    static __New() {
        super.Prototype.DefineProp("Contains", {Call: (self, Item) => this.Contains(self, Item)})
        super.Prototype.DefineProp("ForEach", {Call: (self, Function) => this.ForEach(self, Function)})
        super.Prototype.DefineProp("Filter", {Call: (self, Start, End) => this.Filter(self, Start, End)})
        super.Prototype.DefineProp("Pop", {Call: (self, Index) => this.Pop(self, Index)})
        super.Prototype.DefineProp("Reverse", {Call: (self) => this.Reverse(self)})
        super.Prototype.DefineProp("TypeOf", {Get: (self, Index) => this.TypeOf[self, Index]})
    }
    static Contains(self, Item) {
        for key, value in self
            if value = Item
                return key
        return 0
    }
    static ForEach(self, Function) {
        for k, v in self 
            (Function.MaxParams) > 1 ? (Function)(v, k) : (Function)(v)
    }
    static Filter(self, Start, End) {
        loop end - Start + 1
            self.RemoveAt(Start)
    }
    static Pop(self, Index) {
        item := self[Index], self.RemoveAt(Index)
        return item
    }
    static Reverse(self) {
        arr := []
        for value in self 
            arr.InsertAt(1, value)
        return arr
    }
    static TypeOf[self, Index] {
        get => Type(self[Index])
    }
}
