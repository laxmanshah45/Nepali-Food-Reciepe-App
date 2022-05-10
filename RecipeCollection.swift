

import SwiftUI

struct RecipeCollection: View {
    var recipes: [Recipe]
    var body: some View {
       
        VStack{
            HStack {
                Text("\(recipes.count)\(recipes.count>1 ? " recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum:160), spacing: 15)],spacing: 15 ){
                ForEach(recipes){recipe in
                    RecipeView(reciepe: recipe)
                }
            }
            .padding(.top)
    }
        .padding(.horizontal)
}
}

struct RecipeCollection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
        RecipeCollection(recipes: Recipe.receipesData)
        }}
}
