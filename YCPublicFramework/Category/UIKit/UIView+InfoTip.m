//
//  UIView+InfoTip.m
//  ViewCategoryTest
//
//  Created by 李珈旭 on 2016/12/19.
//  Copyright © 2016年 jiaxuLI. All rights reserved.
//

#import "UIView+InfoTip.h"

typedef NS_ENUM(NSInteger,tipType){
    imageTip = 0,
    buttonTip,
};
@interface TipView()

@property (nonatomic,strong)UILabel *tipLabel;

@property (nonatomic,strong)UIButton *tipButton;

@property (nonatomic,strong)UIImageView *imageView;

@property (nonatomic,assign)tipType type;
@end

@implementation TipView
- (instancetype)initWithFrame:(CGRect)frame Type:(tipType)type
{
    self = [super initWithFrame:frame];
    if (self) {
        _type = type;
    }
    return self;
}
-(UILabel *)tipLabel{
    if (!_tipLabel) {
        _tipLabel = [[UILabel alloc]init];
        _tipLabel.backgroundColor = [UIColor clearColor];
        _tipLabel.textColor = [UIColor lightGrayColor];
        _tipLabel.text = noDataTipText;
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.font = [UIFont systemFontOfSize:15];
    }
    return _tipLabel;
}
-(UIButton *)tipButton{
    if (!_tipButton) {
        _tipButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _tipButton.backgroundColor = [UIColor clearColor];
        UIColor* color = [UIColor colorWithRed: 0.937 green: 0.537 blue: 0.2 alpha: 1];
        [_tipButton setBackgroundColor:color];
        [_tipButton setTitle:buttontitle forState:UIControlStateNormal];
        [_tipButton.layer setMasksToBounds:YES];
        [_tipButton.layer setCornerRadius:3];
        [_tipButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _tipButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_tipButton addTarget:self
                    action:@selector(btnClick:)
          forControlEvents:UIControlEventTouchUpInside];

    }
    return _tipButton;
}
-(UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]init];
        _imageView.backgroundColor = [UIColor clearColor];
        _imageView.image = [UIImage imageNamed:@"noneDataImage"];
    }
    return _imageView;
}
-(void)layoutSubviews{
    CGFloat centerX = self.superview.frame.size.width/2;
    CGFloat centerY = self.superview.frame.size.height/2;
    
    switch (_type) {
        case imageTip:
        {
            
            self.tipLabel.frame = CGRectMake(0, centerY + 4,self.superview.frame.size.width, 38);
            self.imageView.frame = CGRectMake(centerX- 30, centerY - 4 - 60, 60, 60);
            [self addSubview:self.tipLabel];
            [self addSubview:self.imageView];
            self.tipLabel.text = noDataTipText;
        }
            break;
        case buttonTip:
        {
            self.tipLabel.frame = CGRectMake(0, centerY - 4 - 38,self.superview.frame.size.width, 38);
            self.tipButton.frame = CGRectMake(centerX - 70, centerY + 4, 140, 38);
            [self addSubview:self.tipLabel];
            [self addSubview:self.tipButton];
            self.tipLabel.text = netTipText;
        }
            break;
        default:
            break;
    }
}
- (void)btnClick:(UIButton *)sender
{
    if (_tipclick) {
        _tipclick();
    }
}
-(void)TipClick:(void (^)())tipclick{
    _tipclick = tipclick;
}
@end


@implementation UIView (InfoTip)

-(void)nullTip{
    TipView *tip = [[TipView alloc]initWithFrame:self.bounds Type:imageTip];
    tip.tag = tipViewTag;
    [self addSubview:tip];
}
-(void)errorTip:(tipclick)click{
    TipView *tip = [[TipView alloc]initWithFrame:self.bounds Type:buttonTip];
    tip.tag = tipViewTag;
    tip.tipclick = click;
    [self addSubview:tip];
}
-(void)removeTipView{
    for (UIView *view in self.subviews) {
        if (view.tag == tipViewTag) {
             [view removeFromSuperview];
        }
    }
}
@end

