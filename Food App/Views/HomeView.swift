

import SwiftUI

struct HomeView: View {
    
    @StateObject var favorites = FavorisView()
    @State var search = ""
    
    var body: some View {
        
        NavigationView {
     
            ScrollView{
            RecipeCollection(recipes: Recipe.receipesData)
                
            }
            
            .navigationTitle("Nepali Recipes")
            
            
            }
        .navigationViewStyle(.stack)
        
        .environmentObject(favorites)
    }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
