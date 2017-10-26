//: Playground - noun: a place where people can play

import UIKit

// constanten

let population = [1000, 2000, 3000, 4000, 5000, 7000, 6000, 6558, 7575]
let names = ["trym", "michiel", "bart", "kyrill", "ben"]

// sort by descending order
population.sorted(by: >)

// storing the sorted array in ascending alphabetical order
names.sorted(by: <)
var sortedNames = names.sorted(by: <)
print(sortedNames)

// funtion versie, is a named closure
func sortAscending(i: Int, j: Int) -> Bool {
    return i < j
}

//we can pass a closure into a function
var sortedPopulations = population.sorted(by: {(i: Int, j: Int) -> Bool in return i < j})

// can go to this, nog kleiner/ zelfde als hier boven alleen dan minder duidelijk
var sortedPopulations4 = population.sorted(by: {i, j in i < j})

// even smaller
// $ represents like the icon for parameter
var sortedPopulation5 = population.sorted(by: { $0 < $1 })

//or we can just pass the function by its name
var sortedPopulations2 = population.sorted(by: sortAscending)

//sort with just one operator less than or greater
var sortedPopulation3 = population.sorted(by: <)

//map T is like a placeholder, its a generic type = can be anything
var doublePop = population.map { (population) -> Int in return population*2}
print(population)

// filters
var filterPop = population.filter { (population) -> Bool in return population > 1000 }

//REDUCE
var reducePop = population.reduce(0) { (accumulated, population) -> Int in return accumulated + population }

print(reducePop)

// using this function with object - index
class comment {
    var likes: Int
    init(likes: Int) {
        self.likes = likes
    }
} // indexing 50 likes
var arrayofComments: [comment] = []
for index in 0...50 {
    var Comment = comment.init(likes: 10)
    arrayofComments.append(Comment)
}

var totalLikes = arrayofComments.reduce(0) { (totalLikes, currentComment) -> Int in return totalLikes + currentComment.likes }

print(totalLikes)














