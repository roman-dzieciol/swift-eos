import Foundation
import EOSSDK

/** Input parameters for the EOS_SessionSearch_CopySearchResultByIndex function. */
public struct SwiftEOS_SessionSearch_CopySearchResultByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST. */
    public let ApiVersion: Int32

    /**
    The index of the session to retrieve within the completed search query

    - SeeAlso: EOS_SessionSearch_GetSearchResultCount
    */
    public let SessionIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_CopySearchResultByIndexOptions {
        try _tagEOS_SessionSearch_CopySearchResultByIndexOptions(
            ApiVersion: ApiVersion,
            SessionIndex: try safeNumericCast(exactly: SessionIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_CopySearchResultByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionIndex = try safeNumericCast(exactly: sdkObject.SessionIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.
    - Parameter SessionIndex: The index of the session to retrieve within the completed search query
    - SeeAlso: EOS_SessionSearch_GetSearchResultCount
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        SessionIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SessionIndex = SessionIndex
    }
}
