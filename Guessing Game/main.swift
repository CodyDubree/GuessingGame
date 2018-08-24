//
//  main.swift
//  Guessing Game
//
//  Created by Cody Dubree on 8/20/18.
//  Copyright © 2018 Cody Dubree. All rights reserved.
//

import Foundation

var playingGame = true
repeat{
    let randomNumber = arc4random_uniform(101)

    print("random number: \(randomNumber)")

    var numberOfGuesses = 5
    
    //welcomes the user and prompt them for input
    print("Welcome to the guessing Game")
    print("Please guess a number between 0 and 100")

    var userGuess = Int(readLine()!)

    while userGuess == nil
    {print("please enter a valid number")

    userGuess = Int(readLine()!)

    if userGuess! == randomNumber
    { print("you've guessed the number!")
    playingGame = false}
    if userGuess! < randomNumber
    {print("Too low")
    }
    if userGuess! > randomNumber
    {print("Too high")
    }

    }
} while playingGame == true
