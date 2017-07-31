//
//  ViewController.m
//  SocketTest
//
//  Created by bobo on 2017/7/29.
//  Copyright © 2017年 bobo. All rights reserved.
//

#import "ViewController.h"
#import <GCDAsyncSocket.h>
#import "Msg.pbobjc.h"

@interface ViewController () <GCDAsyncSocketDelegate>

@property (nonatomic, strong) GCDAsyncSocket *socket;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onConnect:(id)sender {
    NSLog(@"onConnect !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    self.socket =  [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    [self.socket connectToHost:@"127.0.0.1" onPort:6969 error:nil];
}

- (IBAction)onSendBuf:(id)sender {
    NSMutableData *data =  [[NSData dataWithBytes:"\x01" length:1] mutableCopy];//head
    Msg1 *msg1 = [Msg1 new];
    msg1.field1 = @"client-msg1Field1";
    msg1.field2 = 789987;
    msg1.field3 = @"client-msg1Field3";
    [data appendData:[msg1 data]]; //content
    [data appendData:[GCDAsyncSocket CRLFData]]; //flag
    [self.socket writeData:data withTimeout:-1 tag:110];
}

- (IBAction)onSendBuf2:(id)sender {
    
    NSMutableData *data =  [[NSData dataWithBytes:"\x02" length:1] mutableCopy];//head
    Msg2 *msg2 = [Msg2 new];
    msg2.field4 = 667667;
    msg2.field5 = @"client-msg2Field2";
    msg2.field6 = @"client-msg2Field3";
    [data appendData:[msg2 data]]; //content
    [data appendData:[GCDAsyncSocket CRLFData]]; //flag
    [self.socket writeData:data withTimeout:-1 tag:110];
}





#pragma mark - GCDAsyncSocketDelegate

//连接成功调用
- (void)socket:(GCDAsyncSocket *)sock didConnectToHost:(NSString *)host port:(uint16_t)port {
    NSLog(@"连接成功,host:%@,port:%d",host,port);
    [sock readDataToData:[GCDAsyncSocket CRLFData] withTimeout:-1 tag:110];
}

//断开连接的时候调用
- (void)socketDidDisconnect:(GCDAsyncSocket *)sock withError:(nullable NSError *)err {
    NSLog(@"断开连接,host:%@,port:%d",sock.localHost,sock.localPort);
}

//写的回调
- (void)socket:(GCDAsyncSocket*)sock didWriteDataWithTag:(long)tag {
    NSLog(@"写的回调,tag:%ld",tag);
}


- (void)socket:(GCDAsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag {
    NSLog(@"收到消息：%@",data);
    if (data.length > 3) {
        const char *bytes = [data bytes];
        unsigned char type = bytes[0];
        NSData *protobuf = [data subdataWithRange:NSMakeRange(1, data.length - 3)];
        if (type == '\x01') {
            Msg1 *msg1 = [[Msg1 alloc] initWithData:protobuf error:nil];
            NSLog(@"Msg1 : field1:%@ | field2:%d | field3:%@", msg1.field1, (int)msg1.field2, msg1.field3);
        } else if (type == '\x02') {
            Msg2 *msg2 = [[Msg2 alloc] initWithData:protobuf error:nil];
            NSLog(@"Msg2 : field4:%d | field5:%@ | field6:%@", (int)msg2.field4, msg2.field5, msg2.field6);
        }
    }
   
    [sock readDataToData:[GCDAsyncSocket CRLFData] withTimeout:-1 tag:110];
}

@end
