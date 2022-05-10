let momo = UIImage(named:"momo")!

import SwiftUI

struct RecipeView: View {
    
    var reciepe: Recipe
    var body: some View {
//        Image(uiImage: momo){
//            image in image
//        }
        VStack {
            Image("momo")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 2400, alignment: .center)
           
        }
    
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
        
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(reciepe: Recipe.receipesData[0])
//            .previewLayout(.fixed(width: 320, height: 60))
    }
}
