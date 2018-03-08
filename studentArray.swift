//
//  studentArray.swift
//  This program creates an array of students
//
//  Created by Matthew Lourenco on 08/03/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

enum Grades: String {
	case ONE = "ONE"
	case TWO = "TWO"
	case THREE = "THREE"
	case FOUR = "FOUR"
	case FIVE = "FIVE"
	case SIX = "SIX"
	case SEVEN = "SEVEN"
	case EIGHT = "EIGHT"
	case NINE = "NINE"
	case TEN = "TEN"
	case ELEVEN = "ELEVEN"
	case TWELVE = "TWELVE"
	case JK = "JK"
	case SK = "SK"
}

struct Student {
	//ADT tht defines a student
	
	var _firstName: String
	var _middleName: String
	var _lastName: String
	var _birthDate: String //dd/mm/yyyy
	var _grade: Grades
	
	func firstName()->String {
		//returns the first name
		return _firstName
	}
	func middleName()->String {
		//returns the middle name
		return _middleName
	}
	func lastName()->String {
		//returns the last name
		return _lastName
	}
	func birthDate()->String {
		//returns the birth date
		return _birthDate
	}
	func grade()->Grades {
		//returns the grade
		return _grade
	}
	func fullName()->String {
		//returns the full name
		return ("\(_firstName) \(_middleName) \(_lastName)")
	}
}

var numberOfStudents: Int = 0
var input: String?

while(true) {
	//get the number of students in the classroom
	print("How many students are in the class?")
	input = readLine(strippingNewline: true)
	
	//convert to int
	if Int(input!) != nil {
		numberOfStudents = Int(input!)!
		if numberOfStudents > 0 {
			break
		} else {
			print("Please enter a positive number")
		}
	} else {
		print("Please enter a number")
	}
}

var classroom: [Student] = []
var firstName: String?
var middleName: String?
var lastName: String?
var birthDate: String?
var stringGrade: String?
var grade: Grades = Grades.ONE

for student in 1...numberOfStudents {
	//get fields required to create student
	print("What is student \(student)'s first name?")
	firstName = readLine(strippingNewline: true)

	print("What is \(firstName!)'s middle name?")
	middleName = readLine(strippingNewline: true)

	print("What is \(firstName!)'s last name?")
	lastName = readLine(strippingNewline: true)

	print("What is \(firstName!)'s birth date? (dd/mm/yyyy)")
	birthDate = readLine(strippingNewline: true)

	while true {
		//check that inputted grade is valid
		print("What is \(firstName!)'s grade?")
		stringGrade = readLine(strippingNewline: true)
		if Grades(rawValue: stringGrade!.uppercased()) != nil {
			grade = Grades(rawValue: stringGrade!.uppercased())!
			break
		} else {
			print("Please enter a valid grade")
		}
	}
	classroom.append(Student(_firstName: firstName!, _middleName: middleName!, _lastName: lastName!, _birthDate: birthDate!, _grade: grade))
}

//print each student
for student in classroom {
	print("Name: \(student.fullName()) Birth Date: \(student.birthDate()) Grade: \(student.grade())")
}