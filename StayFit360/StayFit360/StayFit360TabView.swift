//
//  StayFit360TabView.swift
//  StayFit360
//
//  Created by Pratik Haridas Ghadge on 02/10/25.
//

import SwiftUI

struct StayFit360TabView: View {
	@State var selectedTab = "Home"

	init() {
		let appearance = UITabBarAppearance()
		appearance.configureWithOpaqueBackground()
		appearance.stackedLayoutAppearance.selected.iconColor = .green
		appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
		UITabBar.appearance().scrollEdgeAppearance = appearance
	}

	var body: some View {
		TabView(selection : $selectedTab) {
			HomeView()
				.tag("Home")
				.tabItem {
					Image(systemName: "house")
					Text("Home")
				}

			HistoricDataView()
				.tag("Historic")
				.tabItem {
					Image(systemName: "chart.line.uptrend.xyaxis")
					Text("Charts")
				}
		}
	}
}

#Preview {
	StayFit360TabView()
}
