//
//  TYNewFeatureVC.m
//
//  Created by 詹瞻
//
//  For Fast APP
//

#define TYPageCount 3

#import "TYNewFeatureVC.h"
#import "TYNewFeatureCell.h"

@interface TYNewFeatureVC ()

/**
 *  页面点
 */
@property (nonatomic, weak) UIPageControl *control;

@end

@implementation TYNewFeatureVC

static NSString *reuseID = @"cell";

#pragma mark - system method
- (instancetype)init{
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    //设置cell尺寸
    flowLayout.itemSize = TYRectFullScreen.size;
    //清空行距
    flowLayout.minimumLineSpacing = 0;
    //设置滚动方向
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return [super initWithCollectionViewLayout:flowLayout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //注册cell
    [self.collectionView registerClass:[TYNewFeatureCell class] forCellWithReuseIdentifier:reuseID];
    
    //禁止分页和弹性
    self.collectionView.pagingEnabled = YES;
    self.collectionView.bounces = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    // 添加pageController
    [self setUpPageControl];
}
// 添加pageController
- (void)setUpPageControl
{
    // 添加pageController,只需要设置位置，不需要管理尺寸
    UIPageControl *control = [[UIPageControl alloc] init];
    
    control.numberOfPages = TYPageCount;
    control.pageIndicatorTintColor = [UIColor blackColor];
    control.currentPageIndicatorTintColor = [UIColor redColor];
    
    // 设置center
    control.ty_centerX = self.view.ty_centerX;
    control.ty_bottom = self.view.ty_bottom - 30;
    _control = control;
    [self.view addSubview:control];
}

#pragma mark - UIScrollView代理
// 只要一滚动就会调用
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    // 获取当前的偏移量，计算当前第几页
    int page = scrollView.contentOffset.x / scrollView.bounds.size.width + 0.5;
    
    // 设置页数
    _control.currentPage = page;
}

#pragma mark - collectionView delegate

/**
 *  返回每一组的行数
 */
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return TYPageCount;
}

/**
 *  返回cell内容
 */
- (TYNewFeatureCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    TYNewFeatureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseID forIndexPath:indexPath];
    
    //给cell传图片
    
    //拼接图片名称
    NSString *imageName = [NSString stringWithFormat:@"newFeature_0%ld",indexPath.row];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:@"png"];
    
    cell.image = [UIImage imageWithContentsOfFile:path];
    
    [cell setIndexPath:indexPath count:TYPageCount];

    return cell;
}

@end
