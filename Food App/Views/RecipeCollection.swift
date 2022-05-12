import Swift
import SwiftUI

struct RecipeCollection: View{
    var recipes: [Recipe]
    
    var body: some View{
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)],  spacing: 15){
                ForEach(recipes) {recipe in
                    NavigationLink(destination: RecipeDetail(recipe: recipe)){
                    RecipePreview(reciepe: recipe)
                }
                }
            }
            .padding()
        }
        .padding(.horizontal)
        .navigationViewStyle(.stack)
    }
}

struct RecipeCollection_Previews : PreviewProvider{
    static var previews: some View{
        ScrollView{
        RecipeCollection(recipes: Recipe.receipesData)
        }
    }
}
