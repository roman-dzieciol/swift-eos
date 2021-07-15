import Foundation
import EOSSDK


/**
Initialize the Epic Online Services SDK.

Before calling any other function in the SDK, clients must call this function.

This function must only be called one time and must have a corresponding `EOS_Shutdown` call.

- Parameter Options: - The initialization options to use for the SDK.
- Throws: An `EOS_EResult` is returned to indicate success or an error.
`EOS_Success` is returned if the SDK successfully initializes.
`EOS_AlreadyConfigured` is returned if the function has already been called.
`EOS_InvalidParameters` is returned if the provided options are invalid.
*/
public func SwiftEOS_Initialize(
    Options: SwiftEOS_InitializeOptions
) throws {
    try withPointerManager { pointerManager in
        try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
            try throwingSdkResult { 
                EOS_Initialize(Options) } } }
}
