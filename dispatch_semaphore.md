## dispatch_semaphore

- semaphore叫做”信号量”
- 信号量的初始值，可以用来控制线程并发访问的最大数量
- 信号量的初始值为1，代表同时只允许1条线程访问资源，保证线程同步

注意：可以设置初始值最大并发线程数。



## @synchronized

* @syncronized是对mutex递归锁的封装。
* 源码查看：objc4中的objc-sync.mm文件
* @syncronzed(obj)内部会根据ob的地址通过hashmap找到j对应的递归锁，然后进行加锁，解锁操作。

 @synchronized(充当一把锁),如果传不同的对象，代表不同的锁，无法其他加锁的目的。

@synchronized(self ) {

​    [super  __drawMoney];

  }

作为递归锁，支持对递归方法进行加锁，如果不是递归锁，无法对递归方法进行加锁。

## iOS线程同步方案性能比较

性能从高到低

* os_unfair_lock (iOS10)
* osspinLock 
* Semaphore(iOS 8,推荐)
* mutexLock(跨平台，推荐)
* 





   