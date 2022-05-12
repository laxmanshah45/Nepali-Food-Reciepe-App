//
//  RecipeDetail.swift
//  Food App
//
//  Created by Laxman Shah on 5/11/22.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 0){
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                
        
                Group{
                Text(recipe.name)
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    
                    Text(recipe.headline)
                        .multilineTextAlignment(.leading)
                    
                    Text("Ingredients")
                        .font(.system(.largeTitle))
                        .padding(5)
                    
                VStack(alignment: .leading, spacing: 5){
                   
                    ForEach(recipe.ingridents, id: \.self) { ingridents in
                        VStack(alignment: .leading, spacing: 5){
                        
                        Text(ingridents)
                                .font(.footnote)
                            .multilineTextAlignment(.leading)
                            Divider()
                        }
                    }
            }
                Text("Instructions")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(15)
                    Text(recipe.instructions)
            }
            }
          
            .padding()
            
        }
        
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail(recipe: Recipe.receipesData[0])
    }
}
