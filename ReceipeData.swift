

import SwiftUI
extension Recipe{
static let receipesData: [Recipe] = [
    Recipe(id: UUID(), name: "Chicken Dumplings", headline:"momo" , image: "momo",category: "Lunch", cooking: 0, instructions:["Cook in a pot for 20 minutes",
                                                                                                              "Make a masala"],
           ingridents:["Wheat floor",
                                        "checken",
                                        "Onions",
                                        "Tomatoes"]
                                    
),
    Recipe(id: UUID(), name: "Dal", headline:"Kalo Dal" , image: "momo",category: "Breakfast", cooking: 5, instructions:["Cook in a pot for 20 minutes",
                                                                                                              "Make a masala"],
           ingridents:["Wheat floor",
                                        "checken",
                                        "Onions",
                                        "Tomatoes"]
                                    
)
]
    }



