import Foundation
import EOSSDK

/**
 * Tear down the Epic Online Services SDK.
 * Once this function has been called, no more SDK calls are permitted; calling anything after EOS_Shutdown will result in undefined behavior.
 * 
 * @return An EOS_EResult is returned to indicate success or an error.
 * EOS_Success is returned if the SDK is successfully torn down.
 * EOS_NotConfigured is returned if a successful call to EOS_Initialize has not been made.
 * EOS_UnexpectedError is returned if EOS_Shutdown has already been called.
 */
public func SwiftEOS_Shutdown() throws {
    try withPointerManager { pointerManager in
        try throwingSdkResult { 
            EOS_Shutdown() } }
}
