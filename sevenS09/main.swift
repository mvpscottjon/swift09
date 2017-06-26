//
//  main.swift
//  sevenS09
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

////****** class and 繼承關係。   from MySeven



var obj1 = Seven01()
print(obj1.x)


//static 可不用new 物件
print(Seven02.x1) //不用物件實體也可以存取
print(Seven02.x3)

print("-----")
var obj2 = Seven02()

print(obj2.x1)
print(Seven02.x1)



print("-----")

Seven03.f2()

print("-----")

var bike1 = Bike()
var bike2 = Bike()
var bike3 = Bike()
var bike4 = Bike()
print(Bike.counter)  //static counter 可累計
print(bike1.counter)  //物件 只做一次初始化
print(bike2.counter) //物件
print(bike3.counter) //物件
print(bike4.counter) //物件

print("-----")


var obj4 = Super1()
var obj3 = Sub1()   //父類別的init
var obj5 = Sub2()   //執行子類別init 再執行父類別init
var obj6 = Sub3(1) //執行子類別init 再執行父類別init

print("-----")

//****Super init more than one 三種建構式 都可以用
var obj7 = Sub4(1)  //parent的init 是有參數的建構式
var obj7a = Sub4(1.1) //parent's init(double)
var obj7b = Sub4()  //parent's init()
print("-----")

var obj8 = Sub5()
print("-----")
//
var obj8a = Sub5(3)
print("-----")
var obj9 = Sub6()
print("-----")

var obj9a = Sub6(1)   //執行 init(Int) 再執行 init(String) 再執行 super's init

print("-----")



var obja = Sub7(x:1.0)
print("-----")

var objb = Sub7(x:1)

print("-----")

var objc = Sub8()
var objd = Sub8(x:1)
//
//
print("-----")

var obje = Sub8a()
var objf = Sub8a(x:2)


//
//var myid = TWId("A123456789")
//if myid = nil {
//    print("XX")
//}else {
//    print("ok")
//}
