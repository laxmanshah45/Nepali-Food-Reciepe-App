

import SwiftUI

struct FavoritesOnly: View {
    var recipes: [Recipe]
    @State var favoritesOnly = true
    
    var body: some View {
        NavigationView{
            List{
                
////                ForEach(recipes){recipse in
//                    if (recipes.FavorisView){
//                        NavigationLink(destination: RecipeDetail(recipes: recipes)){
//                            RecipeCollection(recipes: recipes)
//                        }
//                    }
//                }
//                
               
                
            }
        }
    }
}

struct FavoritesOnly_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesOnly(recipes: Recipe.receipesData)
    }
}
