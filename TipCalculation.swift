/*Given the meal price (base cost of a meal), tip percent (the percentage of the meal price being added as tip)
and tax percent (the percentage of the meal price being added as tax) for a meal, find and print the meal's total cost.

Given:
mealCost=12mealCost=12, tipPercent=20tipPercent=20, taxPercent=8taxPercent=8
Calculations:
tip=12×20100=2.4tip=12×20100=2.4
tax=12×8100=0.96tax=12×8100=0.96
totalCost=mealCost+tip+tax=12+2.4+0.96=15.36totalCost=mealCost+tip+tax=12+2.4+0.96=15.36
round(totalCost)=15
*/

import Foundation

var mealCost = Float(readLine()!)!
var tipPercent = Float(readLine()!)!
var taxPercent = Float(readLine()!)!
var tip:Float  = 0.00, tax:Float = 0.00
var cost: Float = 0.00
var totalCost = 0

tip = mealCost * (tipPercent / 100)
tax = mealCost * (taxPercent / 100)
cost = ( mealCost + tip + tax )

totalCost = Int(round(cost))
print("The total meal cost is \(totalCost) dollars.")
