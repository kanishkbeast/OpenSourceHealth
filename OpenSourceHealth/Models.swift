//
//  Models.swift
//  OpenSourceHealth
//
//  Created by Kanishk Jain on 10/20/24.
//

import Foundation

struct BloodTest: Identifiable, Codable {
    var id = UUID()
    var date: Date
    var cholesterol: Double
    var triglycerides: Double
    var glucose: Double
}

struct ExerciseLog: Identifiable, Codable {
    var id = UUID()
    var date: Date
    var exerciseName: String
    var sets: Int
    var reps: Int
    var weight: Double // Weight in kg or lbs
}
