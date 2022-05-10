
import SwiftUI



struct ContentView: View {
    var body: some View {
        TabView{
            Text("Home")
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
        }
            CategoriesView()
            Text("Categories")
                .tabItem{
                    Image(systemName: "square.fill.text.grid.1x2")
                    Text("Categories")
        }

            FavoriteView()
            Text("Add Receipes")
                .tabItem{
                    Image(systemName: "heart")
                    Text("Favorites")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
