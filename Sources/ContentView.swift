
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.025, green: 0.035, blue: 0.05)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 24) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("FF")
                                .font(.system(size: 38, weight: .black))
                                .foregroundColor(.green)
                            +
                            Text(" GUARD")
                                .font(.system(size: 30, weight: .black))
                                .foregroundColor(.white)

                            Text("ULTIMATE AIM COMPANION")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "shield.lefthalf.filled")
                            .font(.system(size: 35))
                            .foregroundColor(.green)
                    }

                    featureCard("AIM TRAINER",
                                "scope", "Practice your accuracy")

                    featureCard("RADAR SIMULATOR",
                                "dot.radiowaves.left.and.right",
                                "Independent radar simulation")

                    featureCard("SENSITIVITY",
                                "slider.horizontal.3",
                                "Configure your settings")

                    featureCard("REACTION TEST",
                                "timer", "Test your reaction speed")

                    Text("FF GUARD • VERSION 1.0")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
                .padding(22)
            }
        }
        .preferredColorScheme(.dark)
    }

    func featureCard(
        _ title: String,
        _ icon: String,
        _ subtitle: String
    ) -> some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .font(.system(size: 27))
                .foregroundColor(.green)
                .frame(width: 45)

            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(subtitle)
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.green)
        }
        .padding(18)
        .background(Color.white.opacity(0.07))
        .cornerRadius(16)
    }
}
