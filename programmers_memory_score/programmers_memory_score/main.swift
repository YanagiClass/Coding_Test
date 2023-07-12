//
//  main.swift
//  programmers_memory_score
//
//  Created by 유용상 on 2023/07/12.
//

import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    let name = name
    let yearning = yearning
    let photo = photo
    var result = [Int]()
    var name_yearning = [String:Int]()
    //초기화
    for i in 0..<name.count{
        name_yearning[name[i]] = yearning[i]
    }
    for _ in 0..<photo.count{
        result.append(0)
    }

    
    for j in 0..<result.count{
        
    

        for p in photo[j] {
            guard let alpha = name_yearning[p] else {continue}

            result[j] = result[j] + alpha
        }
    
    

    }//for
    
    return result
}

print(solution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]))

