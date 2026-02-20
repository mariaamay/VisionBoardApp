import UIKit

struct VisionItem {
    let id = UUID()
    let title: String
    let imageName: String
}

extension VisionItem {
    static let items: [VisionItem] = [
        VisionItem(title: "Travel to Japan", imageName: "japan"),
        VisionItem(title: "Pole Dance", imageName: "pole"),
        VisionItem(title: "Books", imageName: "books"),
        VisionItem(title: "Painting", imageName: "painting"),
        VisionItem(title: "Painting Sea", imageName: "painting2"),
        VisionItem(title: "F1", imageName: "f1"),
        VisionItem(title: "Workout", imageName: "workout"),
        VisionItem(title: "Sea", imageName: "sea"),
        VisionItem(title: "Roses", imageName: "roses"),
        VisionItem(title: "Car", imageName: "car"),
        VisionItem(title: "Wine", imageName: "wine"),
        VisionItem(title: "Corgi", imageName: "corgi"),
        VisionItem(title: "Motivational Quote", imageName: "quote"),
        VisionItem(title: "You Are The Queen", imageName: "queen"),
        VisionItem(title: "WorkHard", imageName: "work"),
        VisionItem(title: "Yoga", imageName: "yoga"),
        VisionItem(title: "Apple Aestetics", imageName: "apple"),
    ]
}
