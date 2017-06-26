//
//  MySeven.swift
//  sevenS09
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

class Seven01 {
    var x = 10  //物件的屬性

}
class Seven02 {
    static var x1 = 12  //加static 為類別的屬性
    static var x2:Int?
    static var x3:Int {
        return x1 * 100  //只能用static 的變數
        
        }
    var x4 = 123
    var x1 = 321 //跟static分開的
    init() {
        print(x4)
//        print(x1) //沒辦法呼叫static(class)級別的變數
        print(Seven02.x1) //這樣就可以了
        print(x1) //物件
        print(Seven02.x1)  //stastic
    }
    
    
}

class Seven03 {
    var x = 100
    static var y = 200
    func f1() {
        x += 1
        Seven03.f2()
    }
    static func f1() {
        print("03:static:f1()")
    }
    class func f3() {  //等同於static func
        print("03:class:f3()")

    }
   
    
    static func f2() {
//        x += 1   //為什麼不能用？？？  看起來好像static 只能用static的變數
        //因static 可直接呼叫 所以不能用class裡面的一般變數
        
        y += 1
        f1() //為static的f1()
    }
    
}

class Bike {
    static var counter = 0
    var counter = 0
    init() {
    Bike.counter += 1  //static的counter
        counter += 1  //物件的
        print("Create a new bike")
    }

}


//-----------

//******繼承關係

//只有一個init
class Super1 {
    init(){
        print("Super:init()")
    }

}

class Sub1 : Super1 { //繼承Super1
    //沒有定義任何init 則使用父類別的init
}


class Sub2 : Super1 {
    override init() {  //繼承的父類別 原有init 所以要加override
        
        //會繼承父的init  子類別override後 還是有原先的init 在return前 執行呼叫父的init(幾乎是最後才執行)
        
        
        print("Sub2:init")
    }


}



class Sub3 : Super1 {
        init(_ : Int){//如有重新定義參數則以子的init為先  父的後面才會出現
            print("Sub")
    
    }


}




//-----------
//super2 has 多個init;when sub override init ;that won't do super init
class Super2 {
    init() {print("Super2:init")} //無傳參數為預設建構式
    init(_ : Int) {print("Super2:init(Int)")}
    init(_ : Double) {print("Double")}
}


class Sub4 : Super2 {



}


class Sub5 : Super2 {
    //when super has inits; if sub want to init ; need to override super's init
    override init(){
       
          super.init(3)       //super為關鍵字   因parent有三個建構式 所以一錠要選擇一個來取代 //若指定位置 可先執行
         print("Sub5:init")
    }
    override init(_ :Int) {
    
        super.init()   //override 可以不用同類的init
    }
    init(_ :String){
        super.init()
    }
    
    
}


//====================

//super has just one init
class Super3 {
    init() {
        print("Super3:init()")
    
    }

}

//sub will do himself init and then do super's init
class Sub6 : Super3 {
    override init() {
        print("doSth")
    }
    convenience init(_ : Int){
    //呼叫自己的建構式
    print("Sub6: init(Int)")
        self.init("Brad")
        
    }
    init( _ : String){
//        self.init(3) 又去叫init(3) 會無窮迴圈
        print("String init")
    }
}


////HW 
class TWId {
    var id:String
    
    convenience init(){
        self.init(false)
    
    }
    convenience init(_ gender:Bool){
        self.init(gender, 1)
        
    }

    convenience init(_ area:Int){
        self.init(true, area)
        
    }
    init(_ gender:Bool, _ area: Int){
            print("main logic")
        self.id = "A123456789"
    }
}
//    init?(_ id:String){
//        let a = Int(arc4random_uniform(2))
//        
//        print(a)
////        if a == 0 {
////            return nil}
////        else{
////            self.id = id
//        }
    
        
    
    
    
    
    
//}




class Super4 {
    init(){print("Super4:init()")}
  required init(x:Int){  //required 後面繼承的一定要有這個init
    print("Suber4:init(Int)")}

}


class Sub7 : Super4 {
//   override init(){
//    super.init()
//    }
    init(x:Double){
    
        super.init()
    }
    //super has required init;sub need create one required init
    required init(x: Int) {
        super.init()
    }
    
    
}


class Sub8 : Super4 {



}


class Sub8a : Sub8 {
    override init() {
        super.init()
    }
    
    required init(x: Int) {  // 若此帶有建構式   前幾代有required的 後代一定要有
        super.init()
    }
    
    
}

