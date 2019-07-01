

#import <CocoaLumberjack/CocoaLumberjack.h>

#ifndef LOG_LEVEL_DEF
#define LOG_LEVEL_DEF DDLogLevelDebug
#endif

#ifndef LOG_ASYNC_ENABLED
#define LOG_ASYNC_ENABLED YES
#endif

static DDLogLevel ddLogLevel = DDLogLevelDebug;
