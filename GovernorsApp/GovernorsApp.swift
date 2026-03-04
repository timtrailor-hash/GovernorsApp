import SwiftUI
import TimSharedKit

@main
struct GovernorsApp: App {
    @StateObject private var server = ServerConnection()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                GovernorsView()
            }
            .environmentObject(server)
            .preferredColorScheme(.dark)
        }
    }
}
