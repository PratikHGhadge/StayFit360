//
//  ActivityCard.swift
//  StayFit360
//
//  Created by Pratik Haridas Ghadge on 02/10/25.
//

import SwiftUI

struct ActivityCard: View {
	@State var activity: Activity

	public var body: some View {
		ZStack {
			Color(uiColor: .systemGray6)
				.cornerRadius(15)

			VStack {
				HStack(alignment: .top) {
					VStack(alignment: .leading, spacing: 8) {
						Text(activity.title)
							.font(.headline)
						Text(activity.subtitle)
							.font(.subheadline)
							.foregroundColor(.secondary)
					}
					Spacer()
					Image(systemName: activity.image)
						.foregroundColor(activity.tintColor)
				}
				Text(activity.amount)
					.font(.title)
					.bold()
					.padding(.top, 8)
			}
			.padding()
		}
	}
}

#Preview {
	ActivityCard(
		activity: Activity(
			id: 1,
			title: "Todays Step",
			subtitle: "Goal 10,000 steps",
			image: "figure.walk",
			tintColor: .green,
			amount: "5,129"
		)
	)
}
