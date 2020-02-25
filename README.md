# SSIconFont

## 使用方式

一、配置iconfont

 ![image](https://github.com/shenweihang/SSIconFont/raw/master/ScreenShots/1582596434543.jpg)

二、iconfont使用

```
#import "SSViewController.h"
#import "SSIconFont.h"

@interface SSViewController ()

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Icon Font";
    [self initialUI];
    
}

- (void)initialUI {
    
    UILabel *lbl = SSIconLabelMake(@"\U0000e624", [UIColor blueColor], 40);
    lbl.frame = CGRectMake(0, 100, 40, 40);
    [self.view addSubview:lbl];
    
    UILabel *lbl2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 50, 50)];
    [lbl2 ss_setIconLabelWithInfo:SSIconInfoMake(@"\U0000e624", [UIColor blackColor], 50)];
    [self.view addSubview:lbl2];
    
    UILabel *lbl3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 210, 60, 60)];
    lbl3.text = @"\U0000e624";
    lbl3.textColor = [UIColor grayColor];
    lbl3.font = [SSIconFont fontWithSize:60];
    [self.view addSubview:lbl3];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 280, 60, 60)];
    imgView.image = SSIconImageMake(@"\U0000e624", [UIColor redColor], 60);
    [self.view addSubview:imgView];
}

@end
```
三、iconfont的Unicode命名

在代码中使用的时候需要将Unicode进行转换，如 &#xe61c 转换后: \U0000e61c


## 安装

```ruby
pod 'SSIconFont'
```

## Author

shenweihang, 809827782@qq.com

## License

SSIconFont is available under the MIT license. See the LICENSE file for more info.
