

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(Recipe.receipesData) { recipe in
                Text(recipe.name)
                    .navigationTitle("My Receipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
