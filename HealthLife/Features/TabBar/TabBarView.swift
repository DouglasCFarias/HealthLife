




//////////  AJEITAR /////////////



import SwiftUI
struct TabBarView<Settings: View, Profiles: View>: View {
    @Binding var selectedTab: Tab
    @ViewBuilder let settingsView: () -> Settings
    @ViewBuilder let profilesView: () -> Profiles
    var body: some View {
        TabView(selection: $selectedTab) {
            profilesView()
                .tabItem {
                    Label {
                        //Text(Tab.home.rawValue)
                          //  .foregroundColor(.white)
                    } icon: {
                        Image(selectedTab == .home ? "icon_home" : "icon_home")
                    }
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color(.white), for: .tabBar)
                .tag(Tab.home)
            settingsView()
                .tabItem {
                    Label {
                        //Text(Tab.settings.rawValue)
                            //.foregroundColor(.white)
                    } icon: {
                        Image(selectedTab == .settings ? "icon_config" : "icon_config")
                    }
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color(.white), for: .tabBar)
                .tag(Tab.settings)
        } .accentColor(Color("primary_colors"))
    }
}

enum Tab: String {
    case home = "Home"
    case settings = "Configurações"
}

