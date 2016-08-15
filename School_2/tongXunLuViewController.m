//
//  tongXunLuViewController.m
//  School_2
//
//  Created by hznucai on 15/12/16.
//  Copyright © 2015年 Mu. All rights reserved.
//

#import "tongXunLuViewController.h"

@interface tongXunLuViewController ()
@property UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation tongXunLuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dic = @{@"学校办公室":@"28865012",@"党委组织部":@"28869735",@"党委宣传部":@"28865027",@"纪委办公室":@"28868112",@"发展与改革处":@"28867719",@"人事处":@"28862861",@"教务处":@"28868277",@"科技处":@"28868095",@"人文社科处":@"28866356",@"学生工作部、学生处":@"28865192",@"研究生工作部、研究生处":@"28865141",@"实验室管理处":@"28867183",@"国际合作与交流处":@"28869670",
                 @"计划财务处":@"28865073",@"审计处":@"28861856",@"党委保卫部、保卫处":@"28865103",@"后勤服务集团":@"28861175"};
    self.list = @[@"学校办公室",@"党委组织部",@"党委宣传部",@"纪委办公室",@"发展与改革处",@"人事处",@"教务处",@"科技处",@"人文社科处",@"学生工作部、学生处",@"研究生工作部、研究生处",@"实验室管理处",@"国际合作与交流处",
                  @"计划财务处",@"审计处",@"党委保卫部、保卫处",@"后勤服务集团"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dic count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *id = @"id";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:id];
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = self.dic[cell.textLabel.text];
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIImage *image = [UIImage imageNamed:@"通讯录"];
    self.imageView = [[UIImageView alloc]initWithImage:image];
    return  self.imageView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return self.view.frame.size.height / 4;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:indexPath animated:true];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
