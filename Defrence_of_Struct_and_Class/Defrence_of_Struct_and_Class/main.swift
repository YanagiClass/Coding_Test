//
//  main.swift
//  Defrence_of_Struct_and_Class
//
//  Created by 유용상 on 2023/07/06.
//

import Foundation

class aClass{
    var a: Int = 0
}
struct bStruct{
    var a: Int = 0
}

var aCla = aClass() // 참조
var bStr = bStruct() // 값을 복사함
print("수정전")
print("aCla is \(aCla.a)") //aCla is 0
print("bStr is \(bStr.a)") //bStr is 0
var aClaCpy = aCla
var bStrCpy = bStr
aClaCpy.a = 3
bStrCpy.a = 3
print("수정후")
print("aCla is \(aCla.a)") //aCla is 3
print("bStr is \(bStr.a)") //bStr is 0



