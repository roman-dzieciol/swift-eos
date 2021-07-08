import Foundation
import EOSSDK

/** Get the version of the EOSSDK binary  */
public func SwiftEOS_GetVersion() -> String? {
    withPointerManager { pointerManager in
        returningTransformedResult(
            nested: { 
                EOS_GetVersion() },
            transformedResult: { 
                String(cString: $0) }
        ) }
}

/**
 * Initialize the Epic Online Services SDK.
 * Before calling any other function in the SDK, clients must call this function.
 * This function must only be called one time and must have a corresponding EOS_Shutdown call.
 * 
 * - Parameter Options:  - The initialization options to use for the SDK.
 * @return An EOS_EResult is returned to indicate success or an error. 
 * EOS_Success is returned if the SDK successfully initializes.
 * EOS_AlreadyConfigured is returned if the function has already been called.
 * EOS_InvalidParameters is returned if the provided options are invalid.
 */
public func SwiftEOS_Initialize(
    Options: SwiftEOS_InitializeOptions
) throws {
    try withPointerManager { pointerManager in
        try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
            try throwingSdkResult { 
                EOS_Initialize(Options) } } }
}

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
