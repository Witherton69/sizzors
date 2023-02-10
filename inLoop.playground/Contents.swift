// FOR IN LOOP
// Part 1 (Loop that iterates through a String or an Array)
// Strings and Arrays are values that can be iterated through. Cannot iterate through Sets or Dictionaries, because they do NOT have indexes like String and Arrays.

/*
 Syntax Example
 
 for variableName in iterableValue {
    CODE TO BE RUN GOES HERE
 }
 */

// Example 1 (Displays "I LOVE CHICKEN!" vertically in the console)
print("Example 1")

let chicken = "I LOVE CHICKEN!"
for char in chicken {
    // Run this print for the value at each index of the chicken String variable
    // NOTE: The value of each index is plugged in for the char variable each time the code in the loop is run
    print(char)
}

// Example 2 (Display each String one at a time in the console)
print("Example 2")

let chickenPlaces = [
    "Chick-Fil-A",
    "KFC",
    "Zaxby's",
    "Popeye's",
    "Raisin' Cane's",
    "Bojangles",
    "Los Pollos Hermanos"
]

// Displays the string/value at at each index of the chickenPlaces array each time the code in the loop runs
for place in chickenPlaces {
    print(place)
}
/*
 Chick-Fil-A
 KFC
 Zaxby's
 Popeye's
 Raisin' Cane's
 Bojangles
 Los Pollos Hermanos
 */

// Example 3 (Using the WHERE keyword)
print("Example 3")

// NOTE: Only runs the code in the loop when the value is equal to "KFC"
for place in chickenPlaces where place == "KFC" {
    print(place)
}
// KFC

// Part 2 (Run a line(s) of code a certain number of times)
/*
 Syntax Example
 
 for variableName in Int...Int {
    CODE TO BE RUN GOES HERE
 }
 */

// Example 4 (Running code in the loop 3 times)
print("Example 4")

// NOTE: The print function in the loop runs 3 times (1, 2, 3). Also, an underscore "_" is used when the variable is NOT used (See "i" in next example)
for _ in 1...3 {
    print("Chicken")
}
/*
 Chicken
 Chicken
 Chicken
 */

// Example 5 (Counting to 5)
print("Example 5")

// NOTE: The current number value is plugged in for "i" each time the code in the loop is run
for i in 1...5 {
    print(i)
}
/*
 1
 2
 3
 4
 5
 */

// Example 6 (Counting from 0 to 2)
print("Example 6")

// NOTE: Does NOT include 3
for i in 0..<3 {
    print(i)
}
/*
 0
 1
 2
 */

// Example 7 (Loops through an array)
print("Example 7")

let chickenEntrees = [
    "Chicken Fettucini Alfredo",
    "Chicken Wings",
    "Craniac Combo",
    "Chicken Sandwich",
    "Chicken Salad",
    "Grilled Chicken",
    "Chicken Tenders"
]

// NOTE: Accessing the value of each String in the chickenEntrees array using index (Ex: Array[index])
for i in 0..<chickenEntrees.count {
    print(i)
    print(chickenEntrees[i])
}
/*
 0
 Chicken Fettucini Alfredo
 1
 Chicken Wings
 2
 Craniac Combo
 3
 Chicken Sandwich
 4
 Chicken Salad
 5
 Grilled Chicken
 6
 Chicken Tenders
 */
