//: Playground - noun: a place where people can play

import UIKit

// Single Player Data | Dictionaries

var player1Info = ["name": "Joe Smith", "height": "42", "soccerExperience": "YES", "guardianName": "Jim and Jan Smith"]

var player2Info = ["name": "Jill Tanner", "height": "36", "soccerExperience": "YES", "guardianName": "Clara Tanner"]

var player3Info = ["name": "Bill Bon", "height": "43", "soccerExperience": "YES", "guardianName": "Sara and Jenny Bon"]

var player4Info = ["name": "Eva Gordon", "height": "45", "soccerExperience": "NO", "guardianName": "Wendy and Mike Gordon"]

var player5Info = ["name": "Matt Gill", "height": "40", "soccerExperience": "NO", "guardianName": "Charles and Sylvia Gill"]

var player6Info = ["name": "Kimmy Stein", "height": "41", "soccerExperience": "NO", "guardianName": "Bill and Hillary Stein"]

var player7Info = ["name": "Sammy Adams", "height": "45", "soccerExperience": "NO", "guardianName": "Jeff Adams"]

var player8Info = ["name": "Karl Saygan", "height": "42", "soccerExperience": "YES", "guardianName": "Heather Bledsoe"]

var player9Info = ["name": "Suzane Greenberg", "height": "44", "soccerExperience": "YES", "guardianName": "Henrietta Dumas"]

var player10Info = ["name": "Sal Dali", "height": "41", "soccerExperience": "NO", "guardianName": "Gala Dali"]

var player11Info = ["name": "Joe Kavalier", "height": "39", "soccerExperience": "NO", "guardianName": "Sam and Elaine Kavalier"]

var player12Info = ["name": "Ben Finkelstein", "height": "44", "soccerExperience": "NO", "guardianName": "Aaron and Jill Finkelstein"]

var player13Info = ["name": "Diego Soto", "height": "41", "soccerExperience": "YES", "guardianName": "Robin and Sarika Soto"]

var player14Info = ["name": "Chloe Alaska", "height": "47", "soccerExperience": "NO", "guardianName": "David and Jamie Alaska"]

var player15Info = ["name": "Arnold Willis", "height": "43", "soccerExperience": "NO", "guardianName": "Claire Willis"]

var player16Info = ["name": "Phillip Helm", "height": "44", "soccerExperience": "YES", "guardianName": "Thomas Helm and Eva Jones"]

var player17Info = ["name": "Les Clay", "height": "42", "soccerExperience": "YES", "guardianName": "Wynonna Brown"]

var player18Info = ["name": "Herschel Krustofski", "height": "45", "soccerExperience": "YES", "guardianName": "Hyman and Rachel Krustofski"]


// Collection of total players within the soccer league

var allPlayers = [player1Info, player2Info, player3Info, player4Info, player5Info, player6Info, player7Info, player8Info, player9Info, player10Info, player11Info, player12Info, player13Info, player14Info, player15Info, player16Info, player17Info, player18Info]


// This function calculates number of experienced and unexperienced players within the soccer league

var experiencedPlayers = 0

var unexperiencedPlayers = 0

func getPlayersExperience() -> (Int, Int) {
    
    for player in allPlayers {

    
        if (player["soccerExperience"] == "YES")  {
        
            experiencedPlayers += 1

        } else {
        
            unexperiencedPlayers += 1
    
        }
    }
    
    return (experiencedPlayers, unexperiencedPlayers)
}

// Calling function to get the number of experienced and unexperienced players within the soccer league

getPlayersExperience()


// Defining Teams within the soccer league

var dragons = [Dictionary<String, String>]()

var sharks = [Dictionary<String, String>]()

var raptors = [Dictionary<String, String>]()

// Collection of total teams within the soccer league

var teams = [dragons, sharks, raptors]

// Determining an even number of experienced and unexperienced players amongst X number of teams (defined above)

let experiencedPlayersInEachTeam = experiencedPlayers / teams.count

let unexperiencedPlayersInEachTeam = unexperiencedPlayers / teams.count

let totalPlayersInEachTeam = experiencedPlayersInEachTeam + unexperiencedPlayersInEachTeam

// Counters to keep track of experienced and nonexperienced players within each team

var dragonsExp = 0

var dragonsUnExp = 0

var sharksExp = 0

var sharksUnExp = 0

var raptorsExp = 0

var raptorsUnExp = 0

// This function sorts experienced and unexperienced players evenly into X number of teams (defined above)

func dividePlayersEvenly() {

    for player in allPlayers {
    
        if (dragons.count < totalPlayersInEachTeam && dragonsExp < experiencedPlayersInEachTeam && player["soccerExperience"] == "YES") {
        
            dragonsExp+=1
        
            dragons.append(player)
        
        } else if (dragons.count < totalPlayersInEachTeam && dragonsUnExp < unexperiencedPlayersInEachTeam && player["soccerExperience"] == "NO") {
        
            dragonsUnExp+=1
            dragons.append(player)
        
        } else if (sharks.count < totalPlayersInEachTeam && sharksExp < experiencedPlayersInEachTeam && player["soccerExperience"] == "YES") {
        
            sharksExp+=1
            sharks.append(player)
        
        } else if (sharks.count < totalPlayersInEachTeam && sharksUnExp < unexperiencedPlayersInEachTeam && player["soccerExperience"] == "NO") {
        
            sharksUnExp+=1
            sharks.append(player)
        
        } else if (raptors.count < totalPlayersInEachTeam && raptorsExp < experiencedPlayersInEachTeam && player["soccerExperience"] == "YES") {
        
            raptorsExp+=1
            raptors.append(player)
        
        } else if (raptors.count < totalPlayersInEachTeam && raptorsUnExp < unexperiencedPlayersInEachTeam && player["soccerExperience"] == "NO") {
        
            raptorsUnExp+=1
            raptors.append(player)
        
        }
    }
}

// Calling function to sort experienced and unexperienced players evenly into X number of teams (defined above)

dividePlayersEvenly()



//
//for team in teams {
//        
//    if (team == dragons) {
//        for player in team {
//            
//            print("Dear \(player["guardianName"]), \(player["name"]) is officially a part of the Dragons! We look forward to seeing you at \(player["name"])'s first practice on March 17, at 1pm!")
//            
//        }
//        
//    } else if (team == sharks) {
//        for player in team {
//                
//            print("Dear \(player["guardianName"]), \(player["name"]) is officially a part of the Sharks! We look forward to seeing you at \(player["name"])'s first practice on March 17, at 3pm!")
//            
//        }
//        
//    } else {
//        for player in team {
//                
//            print("Dear \(player["guardianName"]), \(player["name"]) is officially a part of the Raptors! We look forward to seeing you at \(player["name"])'s first practice on March 18, at 1pm!")
//        }
//        
//    }
//            
//}

//var index = 0
//
//while index <= teams.count {
//    
//    for team in teams {
//    
//        if team == dragons {
//            for player in team {
//                
//                index+=1
//        
//            print("Dear \(player["guardianName"]), \(player["name"]) is officially a part of the Dragons! We look forward to seeing you at \(player["name"])'s first practice on March 17, at 1pm!")
//            }
//        
//        } else if team == sharks {
//            
//            for player in team {
//                
//                index+=1
//                
//                print("Dear \(player["guardianName"]), \(player["name"]) is officially a part of the Sharks! We look forward to seeing you at \(player["name"])'s first practice on March 17, at 3pm!")
//            }
//            
//        } else {
//            
//            for player in team {
//                
//                index+=1
//            
//                print("Dear \(player["guardianName"]), \(player["name"]) is officially a part of the Raptors! We look forward to seeing you at \(player["name"])'s first practice on March 18, at 1pm!")
//            }
//        }
//    }
//}










    





