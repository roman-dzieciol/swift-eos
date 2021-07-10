import Foundation
import EOSSDK

/**
 * Set the callback function to use for SDK log messages. Any previously set callback will no longer be called.
 * 
 * - Parameter Callback:  the function to call when the SDK logs messages
 * - Returns:  EOS_Success is returned if the callback will be used for future log messages.
 *         EOS_NotConfigured is returned if the SDK has not yet been initialized, or if it has been shut down
 * 
 * - SeeAlso:  EOS_Initialize
 */
public func SwiftEOS_Logging_SetCallback(
    Callback: @escaping EOS_LogMessageFunc
) throws {
    try withPointerManager { pointerManager in
        try throwingSdkResult { 
            EOS_Logging_SetCallback(Callback) } }
}
