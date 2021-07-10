import Foundation
import EOSSDK

/** Input parameters for the EOS_ActiveSession_CopyInfo function. */
public struct SwiftEOS_ActiveSession_CopyInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACTIVESESSION_COPYINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_ActiveSession_CopyInfoOptions {
        _tagEOS_ActiveSession_CopyInfoOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_ActiveSession_CopyInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ACTIVESESSION_COPYINFO_API_LATEST. 
     */
    public init(
        ApiVersion: Int32 = EOS_ACTIVESESSION_COPYINFO_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
