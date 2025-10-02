//
//  HomeView.swift
//  StayFit360
//
//  Created by Pratik Haridas Ghadge on 02/10/25.
//

import SwiftUI

struct HomeView: View {
	@StateObject var viewModel: HomeViewModel = HomeViewModel()

	var body: some View {
		ScrollView(showsIndicators: false) {
			VStack(alignment: .leading) {
				Text("Welcome")
					.font(.largeTitle)
					.padding()
				HStack {
					Spacer()
					VStack {
						VStack(alignment: .leading, spacing: 8) {
							Text("Calories")
								.font(.callout)
								.bold()
								.foregroundColor(.red)

							Text("\(viewModel.calories) kcal")
								.bold()

						}
						.padding(.bottom)

						VStack(alignment: .leading, spacing: 8) {
							Text("Active")
								.font(.callout)
								.bold()
								.foregroundColor(.green)

							Text("\(viewModel.activeMinutes) min")
								.bold()
						}
						.padding(.bottom)

						VStack(alignment: .leading, spacing: 8) {
							Text("Stand")
								.font(.callout)
								.bold()
								.foregroundColor(.blue)

							Text("\(viewModel.standHours) hours")
								.bold()

						}
					}

					Spacer()

					ZStack {
						ProgressCircleView(
							progress: $viewModel.calories,
							goal: 600,
							color: .red
						)

						ProgressCircleView(
							progress: $viewModel.activeMinutes,
							goal: 60,
							color: .green
						)
						.padding(.all, 20)

						ProgressCircleView(
							progress: $viewModel.standHours,
							goal: 12,
							color: .blue
						)
						.padding(.all, 40)
					}
					.padding(.horizontal)

					Spacer()
				}
				.padding(.leading)

				HStack {
					Text("See all activity")
						.font(.title2)
					Spacer()

					Button {
						print("Button Tapped")
					} label: {
						Text("Show more")
							.padding(.all, 10)
							.foregroundColor(.white)
							.background(.blue)
							.cornerRadius(20)
					}
				}
				.padding(.horizontal)

				LazyVGrid(columns: Array(
					repeating: GridItem(.flexible()),
					count: 2)) {
						ForEach(viewModel.mockActivities, id: \.id) { activity in
							ActivityCard(activity: activity)
						}
					}
					.padding(.horizontal)

				
				HStack {
					Text("Recent Workouts")
						.font(.title2)
					Spacer()
					Button {
						print("Button Tapped")
					} label: {
						Text("Show more")
							.padding(.all, 10)
							.foregroundColor(.white)
							.background(.blue)
							.cornerRadius(20)
					}
				}
				.padding(.horizontal)

				LazyVStack {
					ForEach(viewModel.mockWorkouts, id: \.id) { workout in
						WorkoutCard(workout: workout)
					}
					.padding(.horizontal)
				}
			}
		}
	}
}


#Preview {
	HomeView()
}
