//
//  TYNewFeatureCell.h
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import <UIKit/UIKit.h>

@interface TYNewFeatureCell : UICollectionViewCell

@property (nonatomic, weak) UIImage *image;

// 判断是否是最后一页
- (void)setIndexPath:(NSIndexPath *)indexPath count:(int)count;
@end
