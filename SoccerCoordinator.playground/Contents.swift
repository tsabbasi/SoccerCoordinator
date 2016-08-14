//: Playground - noun: a place where people can play

import UIKit

// Single Player Data

let player1Info = ["name": "Joe Smith", "height": "42", "soccerExperience": "YES", "guardianName": "Jim and Jan Smith"]

let player2Info = ["name": "Jill Tanner", "height": "36", "soccerExperience": "YES", "guardianName": "Clara Tanner"]

let player3Info = ["name": "Bill Bon", "height": "43", "soccerExperience": "YES", "guardianName": "Sara and Jenny Bon"]

let player4Info = ["name": "Eva Gordon", "height": "45", "soccerExperience": "NO", "guardianName": "Wendy and Mike Gordon"]

let player5Info = ["name": "Matt Gill", "height": "40", "soccerExperience": "NO", "guardianName": "Wendy and Mike Gordon"]

let player6Info = ["name": "Kimmy Stein", "height": "41", "soccerExperience": "NO", "guardianName": "Bill and Hillary Stein"]

let player7Info = ["name": "Sammy Adams", "height": "45", "soccerExperience": "NO", "guardianName": "Jeff Adams"]

let player8Info = ["name": "Karl Saygan", "height": "42", "soccerExperience": "YES", "guardianName": "Heather Bledsoe"]

let player9Info = ["name": "Suzane Greenberg", "height": "44", "soccerExperience": "YES", "guardianName": "Henrietta Dumas"]

let player10Info = ["name": "Sal Dali", "height": "41", "soccerExperience": "NO", "guardianName": "Gala Dali"]

let player11Info = ["name": "Joe Kavalier", "height": "39", "soccerExperience": "NO", "guardianName": "Sam and Elaine Kavalier"]

let player12Info = ["name": "Ben Finkelstein", "height": "44", "soccerExperience": "NO", "guardianName": "Aaron and Jill Finkelstein"]

let player13Info = ["name": "Diego Soto", "height": "41", "soccerExperience": "YES", "guardianName": "Robin and Sarika Soto"]

let player14Info = ["name": "Chloe Alaska", "height": "47", "soccerExperience": "NO", "guardianName": "David and Jamie Alaska"]

let player15Info = ["name": "Arnold Willis", "height": "43", "soccerExperience": "NO", "guardianName": "Claire Willis"]

let player16Info = ["name": "Phillip Helm", "height": "44", "soccerExperience": "YES", "guardianName": "Thomas Helm and Eva Jones"]

let player17Info = ["name": "Les Clay", "height": "42", "soccerExperience": "YES", "guardianName": "Wynonna Brown"]

let player18Info = ["name": "Herschel Krustofski", "height": "45", "soccerExperience": "YES", "guardianName": "Hyman and Rachel Krustofski"]

var allPlayers = [player1Info, player2Info, player3Info, player4Info, player5Info, player6Info, player7Info, player8Info, player9Info, player10Info, player11Info, player12Info, player13Info, player14Info, player15Info, player16Info, player17Info, player18Info]

//allPlayers[13]["name"]

//    print(allPlayers[player]["name"])

var experiencedPlayers = 0

var unexperiencedPlayers = 0

// Calculating number of experienced players

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

getPlayersExperience()

// Divide Players' Experience Evenly

var dragons = [Dictionary<String, String>]()

var sharks = [Dictionary<String, String>]()

var raptors = [Dictionary<String, String>]()

var teams = [dragons, sharks, raptors]

let experiencedPlayersInEachTeam = experiencedPlayers / teams.count

let unexperiencedPlayersInEachTeam = unexperiencedPlayers / teams.count

let totalPlayersInEachTeam = experiencedPlayersInEachTeam + unexperiencedPlayersInEachTeam

var dragonsExp = 0

var dragonsUnExp = 0

var sharksExp = 0

var sharksUnExp = 0

var raptorsExp = 0

var raptorsUnExp = 0

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




