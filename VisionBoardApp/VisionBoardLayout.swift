import UIKit

class VisionBoardLayout: UICollectionViewLayout {
    
    private var cache: [UICollectionViewLayoutAttributes] = []
    private var contentHeight: CGFloat = 0
    private let numberOfColumns = 2
    private let cellPadding: CGFloat = 8
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: collectionView!.bounds.width,
                      height: contentHeight)
    }
    
    override func prepare() {
        guard cache.isEmpty,
              let collectionView = collectionView else { return }
        
        let columnWidth = collectionView.bounds.width / CGFloat(numberOfColumns)
        var xOffset: [CGFloat] = []
        for column in 0..<numberOfColumns {
            xOffset.append(CGFloat(column) * columnWidth)
        }
        
        var column = 0
        var yOffset = Array(repeating: CGFloat(0), count: numberOfColumns)
        
        for item in 0..<collectionView.numberOfItems(inSection: 0) {
            let indexPath = IndexPath(item: item, section: 0)
            
            let randomHeight = CGFloat.random(in: 180...280)
            let height = cellPadding * 2 + randomHeight
            
            let frame = CGRect(
                x: xOffset[column],
                y: yOffset[column],
                width: columnWidth,
                height: height
            )
            
            let insetFrame = frame.insetBy(dx: cellPadding,
                                           dy: cellPadding)
            
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            attributes.frame = insetFrame
            cache.append(attributes)
            
            contentHeight = max(contentHeight, frame.maxY)
            yOffset[column] += height
            
            column = column < (numberOfColumns - 1) ? (column + 1) : 0
        }
    }
    
    override func layoutAttributesForElements(in rect: CGRect)
    -> [UICollectionViewLayoutAttributes]? {
        return cache.filter { $0.frame.intersects(rect) }
    }
}
