import Foundation
import EOSSDK

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardDefinitionByIndex function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the leaderboard definition to retrieve from the cache  */
    public let LeaderboardIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions {
        try _tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions(
            ApiVersion: ApiVersion,
            LeaderboardIndex: try safeNumericCast(exactly: LeaderboardIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardIndex = try safeNumericCast(exactly: sdkObject.LeaderboardIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYINDEX_API_LATEST,
        LeaderboardIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardIndex = LeaderboardIndex
    }
}

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYLEADERBOARDID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the leaderboard whose definition you want to copy from the cache  */
    public let LeaderboardId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions {
        _tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions(
            ApiVersion: ApiVersion,
            LeaderboardId: pointerManager.managedPointerToBuffer(copyingArray: LeaderboardId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardId = String(cString: sdkObject.LeaderboardId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYLEADERBOARDID_API_LATEST,
        LeaderboardId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardId = LeaderboardId
    }
}

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardRecordByIndex function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the leaderboard record to retrieve from the cache  */
    public let LeaderboardRecordIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions {
        try _tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions(
            ApiVersion: ApiVersion,
            LeaderboardRecordIndex: try safeNumericCast(exactly: LeaderboardRecordIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardRecordIndex = try safeNumericCast(exactly: sdkObject.LeaderboardRecordIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYINDEX_API_LATEST,
        LeaderboardRecordIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardRecordIndex = LeaderboardRecordIndex
    }
}

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardRecordByUserId function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYUSERID_API_LATEST.  */
    public let ApiVersion: Int32

    /** Leaderboard data will be copied from the cache if it relates to the user matching this Product User ID  */
    public let UserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions {
        _tagEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions(
            ApiVersion: ApiVersion,
            UserId: UserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYUSERID_API_LATEST,
        UserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardUserScoreByIndex function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the sorted leaderboard user score to retrieve from the cache.  */
    public let LeaderboardUserScoreIndex: Int

    /** Name of the stat used to rank the leaderboard.  */
    public let StatName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions {
        try _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions(
            ApiVersion: ApiVersion,
            LeaderboardUserScoreIndex: try safeNumericCast(exactly: LeaderboardUserScoreIndex),
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardUserScoreIndex = try safeNumericCast(exactly: sdkObject.LeaderboardUserScoreIndex)
        self.StatName = String(cString: sdkObject.StatName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST,
        LeaderboardUserScoreIndex: Int,
        StatName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardUserScoreIndex = LeaderboardUserScoreIndex
        self.StatName = StatName
    }
}

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardUserScoreByUserId function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYUSERID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying leaderboard score data from the cache  */
    public let UserId: EOS_ProductUserId?

    /** The name of the stat that is used to rank this leaderboard  */
    public let StatName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions {
        _tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.StatName = String(cString: sdkObject.StatName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYUSERID_API_LATEST,
        UserId: EOS_ProductUserId?,
        StatName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.StatName = StatName
    }
}

/**
 * Contains information about a single leaderboard definition
 * 
 * - see: release func: EOS_Leaderboards_Definition_Release
 */
public struct SwiftEOS_Leaderboards_Definition: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_DEFINITION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Unique ID to identify leaderboard.  */
    public let LeaderboardId: String?

    /** Name of stat used to rank leaderboard.  */
    public let StatName: String?

    /** Aggregation used to sort leaderboard.  */
    public let Aggregation: EOS_ELeaderboardAggregation

    /** The POSIX timestamp for the start time, or EOS_LEADERBOARDS_TIME_UNDEFINED.  */
    public let StartTime: Int

    /** The POSIX timestamp for the end time, or EOS_LEADERBOARDS_TIME_UNDEFINED.  */
    public let EndTime: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_Definition {
        try _tagEOS_Leaderboards_Definition(
            ApiVersion: ApiVersion,
            LeaderboardId: pointerManager.managedPointerToBuffer(copyingArray: LeaderboardId?.utf8CString),
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString),
            Aggregation: Aggregation,
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_Definition?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardId = String(cString: sdkObject.LeaderboardId)
        self.StatName = String(cString: sdkObject.StatName)
        self.Aggregation = sdkObject.Aggregation
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
    }
}

/** Input parameters for the EOS_Leaderboards_GetLeaderboardDefinitionCount function. */
public struct SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions {
        _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Leaderboards_GetLeaderboardRecordCount function. */
public struct SwiftEOS_Leaderboards_GetLeaderboardRecordCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_GETLEADERBOARDRECORDCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_GetLeaderboardRecordCountOptions {
        _tagEOS_Leaderboards_GetLeaderboardRecordCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_GetLeaderboardRecordCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_GETLEADERBOARDRECORDCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Leaderboards_GetLeaderboardUserScoreCount function. */
public struct SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_GETLEADERBOARDUSERSCORECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of stat used to rank leaderboard.  */
    public let StatName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions {
        _tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions(
            ApiVersion: ApiVersion,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StatName = String(cString: sdkObject.StatName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_GETLEADERBOARDUSERSCORECOUNT_API_LATEST,
        StatName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.StatName = StatName
    }
}

/**
 * Contains information about a single leaderboard record
 * 
 * - see: release func: EOS_Leaderboards_LeaderboardRecord_Release
 */
public struct SwiftEOS_Leaderboards_LeaderboardRecord: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_LEADERBOARDRECORD_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID assoicated with this record  */
    public let UserId: EOS_ProductUserId?

    /** Sorted position on leaderboard  */
    public let Rank: Int

    /** Leaderboard score  */
    public let Score: Int

    /** The latest display name seen for the user since they last time logged in. This is empty if the user does not have a display name set.  */
    public let UserDisplayName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_LeaderboardRecord {
        try _tagEOS_Leaderboards_LeaderboardRecord(
            ApiVersion: ApiVersion,
            UserId: UserId,
            Rank: try safeNumericCast(exactly: Rank),
            Score: try safeNumericCast(exactly: Score),
            UserDisplayName: pointerManager.managedPointerToBuffer(copyingArray: UserDisplayName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_LeaderboardRecord?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.Rank = try safeNumericCast(exactly: sdkObject.Rank)
        self.Score = try safeNumericCast(exactly: sdkObject.Score)
        self.UserDisplayName = String(cString: sdkObject.UserDisplayName)
    }
}

/**
 * Contains information about a single leaderboard user score
 * 
 * - see: release func: EOS_Leaderboards_LeaderboardUserScore_Release
 */
public struct SwiftEOS_Leaderboards_LeaderboardUserScore: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_LEADERBOARDUSERSCORE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user who got this score  */
    public let UserId: EOS_ProductUserId?

    /** Leaderboard score  */
    public let Score: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_LeaderboardUserScore {
        try _tagEOS_Leaderboards_LeaderboardUserScore(
            ApiVersion: ApiVersion,
            UserId: UserId,
            Score: try safeNumericCast(exactly: Score)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_LeaderboardUserScore?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.Score = try safeNumericCast(exactly: sdkObject.Score)
    }
}

/** Data containing the result information for a query leaderboard definitions request. */
public struct SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data containing the result information for a query leaderboard ranks request. */
public struct SwiftEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data containing the result information for a query leaderboard user scores request. */
public struct SwiftEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/**
 * Input parameters for the EOS_Leaderboards_QueryLeaderboardDefinitions function.
 * StartTime and EndTime are optional parameters, they can be used to limit the list of definitions
 * to overlap the time window specified.
 */
public struct SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_QUERYLEADERBOARDDEFINITIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** An optional POSIX timestamp for the leaderboard's start time, or EOS_LEADERBOARDS_TIME_UNDEFINED  */
    public let StartTime: Int

    /** An optional POSIX timestamp for the leaderboard's end time, or EOS_LEADERBOARDS_TIME_UNDEFINED  */
    public let EndTime: Int

    /**
     * Product User ID for user who is querying definitions.
     * Must be set when using a client policy that requires a valid logged in user.
     * Not used for Dedicated Server where no user is available.
     */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions {
        try _tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions(
            ApiVersion: ApiVersion,
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_QUERYLEADERBOARDDEFINITIONS_API_LATEST,
        StartTime: Int,
        EndTime: Int,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.StartTime = StartTime
        self.EndTime = EndTime
        self.LocalUserId = LocalUserId
    }
}

/**
 * Input parameters for the EOS_Leaderboards_QueryLeaderboardRanks function.
 * 
 * @see EOS_Leaderboards_Definition
 */
public struct SwiftEOS_Leaderboards_QueryLeaderboardRanksOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_QUERYLEADERBOARDRANKS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the leaderboard whose information you want to retrieve.  */
    public let LeaderboardId: String?

    /**
     * Product User ID for user who is querying ranks.
     * Must be set when using a client policy that requires a valid logged in user.
     * Not used for Dedicated Server where no user is available.
     */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_QueryLeaderboardRanksOptions {
        _tagEOS_Leaderboards_QueryLeaderboardRanksOptions(
            ApiVersion: ApiVersion,
            LeaderboardId: pointerManager.managedPointerToBuffer(copyingArray: LeaderboardId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_QueryLeaderboardRanksOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardId = String(cString: sdkObject.LeaderboardId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_QUERYLEADERBOARDRANKS_API_LATEST,
        LeaderboardId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardId = LeaderboardId
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Leaderboards_QueryLeaderboardUserScores function. */
public struct SwiftEOS_Leaderboards_QueryLeaderboardUserScoresOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * An array of Product User IDs indicating the users whose scores you want to retrieve 
     * - array num: UserIdsCount
     */
    public let UserIds: [EOS_ProductUserId]?

    /**
     * The number of users included in query 
     * - array buffer: UserIds
     */
    public let UserIdsCount: Int

    /**
     * The stats to be collected, along with the sorting method to use when determining rank order for each stat 
     * - array num: StatInfoCount
     */
    public let StatInfo: [SwiftEOS_Leaderboards_UserScoresQueryStatInfo]?

    /**
     * The number of stats to query 
     * - array buffer: StatInfo
     */
    public let StatInfoCount: Int

    /** An optional POSIX timestamp, or EOS_LEADERBOARDS_TIME_UNDEFINED; results will only include scores made after this time  */
    public let StartTime: Int

    /** An optional POSIX timestamp, or EOS_LEADERBOARDS_TIME_UNDEFINED; results will only include scores made before this time  */
    public let EndTime: Int

    /**
     * Product User ID for user who is querying user scores.
     * Must be set when using a client policy that requires a valid logged in user.
     * Not used for Dedicated Server where no user is available.
     */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions {
        try _tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions(
            ApiVersion: ApiVersion,
            UserIds: pointerManager.managedPointerToBuffer(copyingArray: UserIds),
            UserIdsCount: try safeNumericCast(exactly: UserIdsCount),
            StatInfo: try pointerManager.managedPointerToBuffer(copyingArray: StatInfo?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            StatInfoCount: try safeNumericCast(exactly: StatInfoCount),
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserIds = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.UserIds,
            count: sdkObject.UserIdsCount
        )
        self.UserIdsCount = try safeNumericCast(exactly: sdkObject.UserIdsCount)
        self.StatInfo = try sdkObject.StatInfo.array(safeNumericCast(exactly: sdkObject.StatInfoCount)).compactMap { 
            try SwiftEOS_Leaderboards_UserScoresQueryStatInfo.init(sdkObject: $0.pointee) }
        self.StatInfoCount = try safeNumericCast(exactly: sdkObject.StatInfoCount)
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST,
        UserIds: [EOS_ProductUserId]?,
        UserIdsCount: Int,
        StatInfo: [SwiftEOS_Leaderboards_UserScoresQueryStatInfo]?,
        StatInfoCount: Int,
        StartTime: Int,
        EndTime: Int,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserIds = UserIds
        self.UserIdsCount = UserIdsCount
        self.StatInfo = StatInfo
        self.StatInfoCount = StatInfoCount
        self.StartTime = StartTime
        self.EndTime = EndTime
        self.LocalUserId = LocalUserId
    }
}

/** Contains information about a single stat to query with user scores. */
public struct SwiftEOS_Leaderboards_UserScoresQueryStatInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_USERSCORESQUERYSTATINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The name of the stat to query.  */
    public let StatName: String?

    /** Aggregation used to sort the cached user scores.  */
    public let Aggregation: EOS_ELeaderboardAggregation

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_UserScoresQueryStatInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StatName = String(cString: sdkObject.StatName)
        self.Aggregation = sdkObject.Aggregation
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_UserScoresQueryStatInfo {
        _tagEOS_Leaderboards_UserScoresQueryStatInfo(
            ApiVersion: ApiVersion,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString),
            Aggregation: Aggregation
        )
    }
}
