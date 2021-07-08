import Foundation
import EOSSDK

/** Input parameters for the EOS_SessionSearch_CopySearchResultByIndex function. */
public struct SwiftEOS_SessionSearch_CopySearchResultByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * 
     * The index of the session to retrieve within the completed search query
     * 
     * @see EOS_SessionSearch_GetSearchResultCount
     */
    public let SessionIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        SessionIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SessionIndex = SessionIndex
    }
}
public struct SwiftEOS_SessionSearch_FindCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_FindCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_SessionSearch_FindCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_SessionSearch_Find function. */
public struct SwiftEOS_SessionSearch_FindOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is searching  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_FindOptions {
        _tagEOS_SessionSearch_FindOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_FindOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_SessionSearch_GetSearchResultCount function. */
public struct SwiftEOS_SessionSearch_GetSearchResultCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_GetSearchResultCountOptions {
        _tagEOS_SessionSearch_GetSearchResultCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_GetSearchResultCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/**
 * Input parameters for the EOS_SessionSearch_RemoveParameter function.
 * Removal requires both the key and its comparator in order to remove as the same key can be used in more than one operation
 */
public struct SwiftEOS_SessionSearch_RemoveParameterOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Search parameter key to remove from the search  */
    public let Key: String?

    /** Search comparison operation associated with the key to remove  */
    public let ComparisonOp: EOS_EOnlineComparisonOp

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_RemoveParameterOptions {
        _tagEOS_SessionSearch_RemoveParameterOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_RemoveParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        Key: String?,
        ComparisonOp: EOS_EOnlineComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.ComparisonOp = ComparisonOp
    }
}

/** Input parameters for the EOS_SessionSearch_SetMaxResults function. */
public struct SwiftEOS_SessionSearch_SetMaxResultsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONSEARCH_SETMAXSEARCHRESULTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Maximum number of search results returned with this query, may not exceed EOS_SESSIONS_MAX_SEARCH_RESULTS  */
    public let MaxSearchResults: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetMaxResultsOptions {
        try _tagEOS_SessionSearch_SetMaxResultsOptions(
            ApiVersion: ApiVersion,
            MaxSearchResults: try safeNumericCast(exactly: MaxSearchResults)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetMaxResultsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxSearchResults = try safeNumericCast(exactly: sdkObject.MaxSearchResults)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONSEARCH_SETMAXSEARCHRESULTS_API_LATEST,
        MaxSearchResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxSearchResults = MaxSearchResults
    }
}

/**
 * Input parameters for the EOS_SessionSearch_SetParameter function.
 * A search key may be set more than once to make multiple comparisons
 * The two comparisons are AND'd together
 * (ie, Key GREATER_THAN 5, Key NOT_EQUALS 10)
 */
public struct SwiftEOS_SessionSearch_SetParameterOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Search parameter describing a key and a value to compare  */
    public let Parameter: SwiftEOS_Sessions_AttributeData?

    /** The type of comparison to make against the search parameter  */
    public let ComparisonOp: EOS_EOnlineComparisonOp

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetParameterOptions {
        try _tagEOS_SessionSearch_SetParameterOptions(
            ApiVersion: ApiVersion,
            Parameter: try pointerManager.managedPointer(copyingValueOrNilPointer: Parameter?.buildSdkObject(pointerManager: pointerManager)),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Parameter = try SwiftEOS_Sessions_AttributeData.init(sdkObject: sdkObject.Parameter.pointee)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        Parameter: SwiftEOS_Sessions_AttributeData?,
        ComparisonOp: EOS_EOnlineComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Parameter = Parameter
        self.ComparisonOp = ComparisonOp
    }
}

/** Input parameters for the EOS_SessionSearch_SetSessionId function. */
public struct SwiftEOS_SessionSearch_SetSessionIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Search sessions for a specific session ID, returning at most one session  */
    public let SessionId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetSessionIdOptions {
        _tagEOS_SessionSearch_SetSessionIdOptions(
            ApiVersion: ApiVersion,
            SessionId: pointerManager.managedPointerToBuffer(copyingArray: SessionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetSessionIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionId = String(cString: sdkObject.SessionId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        SessionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionId = SessionId
    }
}

/** Input parameters for the EOS_SessionSearch_SetTargetUserId function. */
public struct SwiftEOS_SessionSearch_SetTargetUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to find; return any sessions where the user matching this ID is currently registered  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetTargetUserIdOptions {
        _tagEOS_SessionSearch_SetTargetUserIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetTargetUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
