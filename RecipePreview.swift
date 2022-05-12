//let momo = UIImage(named:"momo")!

import SwiftUI

struct RecipePreview: View {
    
    var reciepe: Recipe
    
    var body: some View {
        VStack{
            Image(reciepe.image)
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 12){
                Text(reciepe.name)
                    .fontWeight(.bold)
                    .lineLimit(1)
                
                Text(reciepe.headline)
                    .italic()
                    .multilineTextAlignment(.center)
                
            }
            .padding()
            
        }
        .background(Color.white)
        .cornerRadius(12)
        
        
    }
        
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipePreview(reciepe: Recipe.receipesData[0])
            .previewLayout(.sizeThatFits)
//            .previewLayout(.fixed(width: 320, height: 60))
    }
}


