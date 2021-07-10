import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbySearch_SetMaxResults function. */
public struct SwiftEOS_LobbySearch_SetMaxResultsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_SETMAXRESULTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Maximum number of search results to return from the query  */
    public let MaxResults: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_SetMaxResultsOptions {
        try _tagEOS_LobbySearch_SetMaxResultsOptions(
            ApiVersion: ApiVersion,
            MaxResults: try safeNumericCast(exactly: MaxResults)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_SetMaxResultsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxResults = try safeNumericCast(exactly: sdkObject.MaxResults)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LOBBYSEARCH_SETMAXRESULTS_API_LATEST. 
     * - Parameter MaxResults:  Maximum number of search results to return from the query 
     */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETMAXRESULTS_API_LATEST,
        MaxResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxResults = MaxResults
    }
}
