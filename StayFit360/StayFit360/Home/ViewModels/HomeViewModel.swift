//
//  HomeViewModel.swift
//  StayFit360
//
//  Created by Pratik Haridas Ghadge on 03/10/25.
//

import Foundation

class HomeViewModel: ObservableObject {

	var calories: Int = 123
	var activeMinutes: Int = 52
	var standHours: Int = 8

	var mockActivities: [Activity] = [
		Activity(
			id: 0,
			title: "Today Steps",
			subtitle: "Goal 12,000",
			image: "figure.walk",
			tintColor: .green,
			amount: "9,812"
		),
		Activity(
			id: 1,
			title: "Calories Burned",
			subtitle: "Goal 1,000",
			image: "flame.fill",
			tintColor: .red,
			amount: "812"
		),
		Activity(
			id: 2,
			title: "Distance",
			subtitle: "Goal 12 km",
			image: "figure.walk",
			tintColor: .blue,
			amount: "9.8 km"
		),
		Activity(
			id: 3,
			title: "Running Steps",
			subtitle: "Goal 50,000",
			image: "figure.run",
			tintColor: .purple,
			amount: "55,812"
		)
	]

	let mockWorkouts: [Workout] = [
		Workout(
			id: 0,
			title: "Running",
			image: "figure.run",
			tintColor: .cyan,
			duration: "51 mins",
			date: "Aug 1",
			calories: "512 kcal"
		),
		Workout(
			id: 1,
			title: "Strength Training",
			image: "figure.run",
			tintColor: .red,
			duration: "51 mins",
			date: "Aug 1",
			calories: "512 kcal"
		),
		Workout(
			id: 2,
			title: "Walk",
			image: "figure.walk",
			tintColor: .purple,
			duration: "5 mins",
			date: "Aug 11",
			calories: "512 kcal"
		),
		Workout(
			id: 3,
			title: "Running",
			image: "figure.run",
			tintColor: .cyan,
			duration: "1 min",
			date: "Aug 19",
			calories: "512 kcal"
		)
	]

}
