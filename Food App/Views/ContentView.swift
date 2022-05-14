
import SwiftUI



struct ContentView: View {
    @EnvironmentObject var favorites: FavorisView
    
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem{
                   Label("Home", systemImage: "house")
        }
            CategoriesView()
                .tabItem{
                    Label("Categories", systemImage:"list.dash")  
        }

            Search()
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
        }  
    }
      
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
