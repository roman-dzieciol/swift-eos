import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_CreateSessionSearch function. */
public struct SwiftEOS_Sessions_CreateSessionSearchOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_CREATESESSIONSEARCH_API_LATEST.  */
    public let ApiVersion: Int32

    /** Max number of results to return  */
    public let MaxSearchResults: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CreateSessionSearchOptions {
        try _tagEOS_Sessions_CreateSessionSearchOptions(
            ApiVersion: ApiVersion,
            MaxSearchResults: try safeNumericCast(exactly: MaxSearchResults)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CreateSessionSearchOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxSearchResults = try safeNumericCast(exactly: sdkObject.MaxSearchResults)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONS_CREATESESSIONSEARCH_API_LATEST. 
     * - Parameter MaxSearchResults:  Max number of results to return 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_CREATESESSIONSEARCH_API_LATEST,
        MaxSearchResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxSearchResults = MaxSearchResults
    }
}
