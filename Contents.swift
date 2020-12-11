import UIKit

//定義類別class的屬性、內容(property)
class Medicine {
    var name = "cerenin" //設藥名為循利寧
    var memory = 50 //設腦力等於50%
    var frequency = 3 //每日吃三次
    var takingTime = "飯後"
    
    
    //func可以存取自己的屬性，每次呼叫內容累進。
    //設每天三餐飯後吃，一天可以增加腦力1%。
    func improveMemory(addMemory: Int) {
        memory = memory + 1
        print("一天吃\(frequency)次\(name)，\(takingTime)吃，每天腦力增加1％")
    }

    //屬性置於function裡，每次呼叫內容將不累進。
    //設腦力超過80%時就停藥，不然最後會跟露西一樣變成隨身碟。
    func stopTakingMedicine(lowerMemory: Int) {
        memory = memory - 1
        print("腦力超過80%就先停藥，每天腦力減少1％")
    }
    
}

class superMedicine: Medicine {
    func turnOffTheStove() {
        memory = memory + 3
        print("關瓦斯") //設每吃一顆超級循利寧就可以增加1%腦力，除了一顆抵三顆，還會記得關瓦斯。
    }
}

//產出物件(Object)並修改其物件屬性內容(property)
let grandma = Medicine() //阿嬤要吃藥
grandma.name = "循利寧" //阿嬤看不懂英文，把cerenin改成中文的循例寧。
grandma.memory = 77 //阿嬤腦力77%
let grandpa = superMedicine() //阿公除了腦力比阿媽低，還會忘記關瓦斯，所以要吃超級循利寧。
grandpa.name = "超級循利寧" ////阿公也看不懂英文，所以改成中文。

//呼叫function
grandma.improveMemory(addMemory: 10)
grandma.stopTakingMedicine(lowerMemory: 7)
grandpa.turnOffTheStove()




