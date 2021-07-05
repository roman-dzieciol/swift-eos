import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbySearch_CopySearchResultByIndex function. */
public struct SwiftEOS_LobbySearch_CopySearchResultByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_COPYSEARCHRESULTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The index of the lobby to retrieve within the completed search query
     * 
     * @see EOS_LobbySearch_GetSearchResultCount
     */
    public let LobbyIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_CopySearchResultByIndexOptions {
        try _tagEOS_LobbySearch_CopySearchResultByIndexOptions(
            ApiVersion: ApiVersion,
            LobbyIndex: try safeNumericCast(exactly: LobbyIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_CopySearchResultByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyIndex = try safeNumericCast(exactly: sdkObject.LobbyIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_COPYSEARCHRESULTBYINDEX_API_LATEST,
        LobbyIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyIndex = LobbyIndex
    }
}

/** Output parameters for the EOS_LobbySearch_Find function. */
public struct SwiftEOS_LobbySearch_FindCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_FindCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_LobbySearch_FindCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_LobbySearch_Find function. */
public struct SwiftEOS_LobbySearch_FindOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_FIND_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user making the search request  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_FindOptions {
        _tagEOS_LobbySearch_FindOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_FindOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_FIND_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_LobbySearch_GetSearchResultCount function. */
public struct SwiftEOS_LobbySearch_GetSearchResultCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_GETSEARCHRESULTCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_GetSearchResultCountOptions {
        _tagEOS_LobbySearch_GetSearchResultCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_GetSearchResultCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_GETSEARCHRESULTCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_LobbySearch_RemoveParameter function. */
public struct SwiftEOS_LobbySearch_RemoveParameterOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_REMOVEPARAMETER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Search parameter key to remove from the search  */
    public let Key: String?

    /** Search comparison operation associated with the key to remove  */
    public let ComparisonOp: EOS_EComparisonOp

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_RemoveParameterOptions {
        _tagEOS_LobbySearch_RemoveParameterOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_RemoveParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_REMOVEPARAMETER_API_LATEST,
        Key: String?,
        ComparisonOp: EOS_EComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.ComparisonOp = ComparisonOp
    }
}

/** Input parameters for the EOS_LobbySearch_SetLobbyId function. */
public struct SwiftEOS_LobbySearch_SetLobbyIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the lobby to find  */
    public let LobbyId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_SetLobbyIdOptions {
        _tagEOS_LobbySearch_SetLobbyIdOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_SetLobbyIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
    }
}

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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETMAXRESULTS_API_LATEST,
        MaxResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxResults = MaxResults
    }
}

/** Input parameters for the EOS_LobbySearch_SetParameter function. */
public struct SwiftEOS_LobbySearch_SetParameterOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_SETPARAMETER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Search parameter describing a key and a value to compare  */
    public let Parameter: SwiftEOS_Lobby_AttributeData?

    /** The type of comparison to make against the search parameter  */
    public let ComparisonOp: EOS_EComparisonOp

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_SetParameterOptions {
        try _tagEOS_LobbySearch_SetParameterOptions(
            ApiVersion: ApiVersion,
            Parameter: try pointerManager.managedPointer(copyingValueOrNilPointer: Parameter?.buildSdkObject(pointerManager: pointerManager)),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_SetParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Parameter = try SwiftEOS_Lobby_AttributeData.init(sdkObject: sdkObject.Parameter?.pointee)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETPARAMETER_API_LATEST,
        Parameter: SwiftEOS_Lobby_AttributeData?,
        ComparisonOp: EOS_EComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Parameter = Parameter
        self.ComparisonOp = ComparisonOp
    }
}

/** Input parameters for the EOS_LobbySearch_SetTargetUserId function. */
public struct SwiftEOS_LobbySearch_SetTargetUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_SETTARGETUSERID_API_LATEST.  */
    public let ApiVersion: Int32

    /** Search lobbies for given user by Product User ID, returning any lobbies where this user is currently registered  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_SetTargetUserIdOptions {
        _tagEOS_LobbySearch_SetTargetUserIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_SetTargetUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETTARGETUSERID_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
