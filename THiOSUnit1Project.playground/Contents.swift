/*
 Michael Compton
 Treehouse iOS Techdegree: Unit 1: Project Soccer Coordinator
*/

// Part 1: Using the Soccer Player Info spreadsheet, create a Dictionary with String keys for each player. Also create an empty collection constant to hold all player data. Create an empty array for each of the three teams, Dragons/Sharks/Raptors.

// Key: "name" = Players Name, "height" = Players height, "hasExp" = Soccer Experience, "guardians" = Guardian Name(s)

var players = [[String: String]] ()
players = [
    ["name": "Joe Smith", "height": "42", "hasExp": "true", "guardians": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": "36", "hasExp": "true", "guardians": "Clara Tanner"],
    ["name": "Bill Bon", "height": "43", "hasExp": "true", "guardians": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": "45", "hasExp": "false", "guardians": "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": "40", "hasExp": "false", "guardians": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": "41", "hasExp": "false", "guardians": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": "45", "hasExp": "false", "guardians": "Jeff Adams"],
    ["name": "Karl Saygan", "height": "42", "hasExp": "true", "guardians": "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": "44", "hasExp": "true", "guardians": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": "41", "hasExp": "false", "guardians": "Gala Dali"],
    ["name": "Joe Kavalier", "height": "39", "hasExp": "false", "guardians": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": "44", "hasExp": "false", "guardians": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": "41", "hasExp": "true", "guardians": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": "47", "hasExp": "false", "guardians": "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": "43", "hasExp": "false", "guardians": "Claire Willis"],
    ["name": "Phillip Help", "height": "44", "hasExp": "true", "guardians": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": "42", "hasExp": "true", "guardians": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": "45", "hasExp": "true", "guardians": "Hyman and Rachel Krustofski"]
]

var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Part 2: Logic sorts players into 3 even teams based on player experience. First, sort players by "hasExp". Then divide equally based on experience into the three teams.

var experiencedPlayers: [[String: String]] = []
var inexperiencedPlayers: [[String: String]] = []

for player in players {
    if player["hasExp"] == "true" {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

for player in experiencedPlayers {
    if teamDragons.count < teamSharks.count || teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count || teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

for player in inexperiencedPlayers {
    if teamDragons.count < teamSharks.count || teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count || teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

