import Foundation
import EOSSDK

/**
 * Set the callback function to use for SDK log messages. Any previously set callback will no longer be called.
 * 
 * - Parameter Callback:  the function to call when the SDK logs messages
 * @return EOS_Success is returned if the callback will be used for future log messages.
 *         EOS_NotConfigured is returned if the SDK has not yet been initialized, or if it has been shut down
 * 
 * @see EOS_Initialize
 */
public func SwiftEOS_Logging_SetCallback(
    Callback: @escaping EOS_LogMessageFunc
) throws {
    try withPointerManager { pointerManager in
        try throwingSdkResult { 
            EOS_Logging_SetCallback(Callback) } }
}

/**
 * Set the logging level for the specified logging category. By default all log categories will callback for Warnings, Errors, and Fatals.
 * 
 * - Parameter LogCategory:  the specific log category to configure. Use EOS_LC_ALL_CATEGORIES to configure all categories simultaneously to the same log level.
 * - Parameter LogLevel:  the log level to use for the log category
 * 
 * @return EOS_Success is returned if the log levels are now in use.
 *         EOS_NotConfigured is returned if the SDK has not yet been initialized, or if it has been shut down.
 */
public func SwiftEOS_Logging_SetLogLevel(
    LogCategory: EOS_ELogCategory,
    LogLevel: EOS_ELogLevel
) throws {
    try withPointerManager { pointerManager in
        try throwingSdkResult { 
            EOS_Logging_SetLogLevel(
                LogCategory,
                LogLevel
            ) } }
}
