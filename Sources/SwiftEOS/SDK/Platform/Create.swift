import Foundation
import EOSSDK


/**
Create a single Epic Online Services Platform Instance.

The platform instance is used to gain access to the various Epic Online Services.

This function returns an opaque handle to the platform instance, and that handle must be passed to `EOS_Platform_Release` to release the instance.

- Returns: An opaque handle to the platform instance.
*/
public func SwiftEOS_Platform_Create(
    Options: SwiftEOS_Platform_Options
) throws -> EOS_HPlatform? {
    try withPointerManager { pointerManager in
        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
            EOS_Platform_Create(Options) } }
}
