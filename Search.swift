
import SwiftUI


    struct Search: View {
        let recipes = ["Momo", "Samosa", "Saag", "Samosa", "ChanaMasala", "Panipuri", "Alo Gobi", "Puri","Tandori"]
          
           @State var search = ""
           
           var body: some View {
               NavigationView {
                   List {
                     
                     ForEach(search == "" ? recipes: recipes.filter { $0.contains(search)}, id: \.self) { recipe in
                           Text(recipe)
                       }
                       .navigationTitle("Recipes")
                   }
                 
                 .searchable(text: $search)
               }
           }
    }



struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
