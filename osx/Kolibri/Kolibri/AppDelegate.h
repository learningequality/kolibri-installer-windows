//
//  AppDelegate.h
//  Kolibri
//
//  Copyright (c) 2016 Learning Equality

#import <Cocoa/Cocoa.h>

// REF: http://stackoverflow.com/a/6064675/845481
// How to open a new window in a Cocoa application on launch
@interface AppDelegate : NSObject <NSApplicationDelegate, NSUserNotificationCenterDelegate> {
    IBOutlet id splash;
    IBOutlet id window;
}


@property (weak) IBOutlet NSButton *startButton;
@property (weak) IBOutlet NSButton *stopButton;
@property (weak) IBOutlet NSButton *openBrowserButton;
@property (weak) IBOutlet NSTextField *kolibriVersion;
@property (weak) IBOutlet NSPathControl *customKolibriData;
@property (weak) IBOutlet NSButton *loadOnLogin;
@property (weak) IBOutlet NSButton *startOnLoad;

@property (strong, nonatomic) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusItem;
@property (strong, nonatomic) NSStatusItem *startItem;
@property (strong, nonatomic) NSStatusItem *stopItem;
@property (strong, nonatomic) NSStatusItem *openItem;
@property (unsafe_unretained) IBOutlet NSTextView *taskLogs;
@property signed int processCounter;
@property BOOL isLoaded;
@property BOOL autoStartOnLoad;
@property NSString *version;

@property (weak) IBOutlet NSMenuItem *startKolibri;
@property (weak) IBOutlet NSMenuItem *stopKolibri;
@property (weak) IBOutlet NSMenuItem *openInBrowserMenu;

@property (weak) IBOutlet NSButton *resetAppAction;

@property (weak) IBOutlet NSButton *deleteKolibriData;
@property (weak) IBOutlet NSButton *kolibriUninstallHelp;
@property (weak) IBOutlet NSButton *kolibriDataHelp;
@property (weak) IBOutlet NSButton *savePrefs;

@property (weak) IBOutlet NSPopover *popover;
@property (weak) IBOutlet NSTextField *popoverMsg;
@property (weak) IBOutlet NSView *aView;


enum kolibriStatus {
    statusOkRunning = 0,
    statusStopped = 1,
    statusStartingUp = 4,
    statusNotResponding = 5,
    statusFailedToStart = 6,
    statusUncleanShutdown = 7,
    statusUnknownKolibriRunningOnPort = 8,
    statusKolibriServerConfigurationError = 9,
    statusCouldNotReadPidFile = 99,
    statusInvalidPidFile = 100,
    statusCouldNotDetermineStatus = 101
};
@property enum kolibriStatus status;
@property enum kolibriStatus lastStatus;

enum kolibriQuitReason {
    quitByUnknown = 0,
    quitByUser = 1,
    quitByOS = 2,
    quitByApp = 3,
    quitByUninstall = 4
};
@property enum kolibriQuitReason quitReason;


- (void)closeSplash;


@end
