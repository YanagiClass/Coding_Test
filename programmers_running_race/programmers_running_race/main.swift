//
//  main.swift
//  programmers_running_race
//
//  Created by 유용상 on 2023/06/24.
//
import Foundation





func solution(_ players: [String], _ callings: [String]) -> [String] {
    var players = players
    var positions = [String: Int]()
    

    for (index, player) in players.enumerated() {
        positions[player] = index
    }
    
    for calling in callings {
        guard let pos = positions[calling], pos > 0 else { continue }
        //position[calling]이 nil이 아님&& pos의 위치가 맨 앞자리가 아니여야함.

        
        let otherPlayer = players[pos - 1]
        players.swapAt(pos, pos - 1)
        
        // 해시테이블 업데이트!
        positions[calling] = pos - 1
        positions[otherPlayer] = pos
    }
    
    return players
}

var players: [String] = ["mumu", "soe", "poe", "kai", "mine"]
var callings: [String] = ["kai", "kai", "mine", "mine"]
print(solution(players, callings))


