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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACTIVESESSION_COPYINFO_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_ActiveSession_GetRegisteredPlayerByIndex function. */
public struct SwiftEOS_ActiveSession_GetRegisteredPlayerByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the registered player to retrieve  */
    public let PlayerIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions {
        try _tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions(
            ApiVersion: ApiVersion,
            PlayerIndex: try safeNumericCast(exactly: PlayerIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PlayerIndex = try safeNumericCast(exactly: sdkObject.PlayerIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST,
        PlayerIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.PlayerIndex = PlayerIndex
    }
}

/** Input parameters for the EOS_ActiveSession_GetRegisteredPlayerCount function. */
public struct SwiftEOS_ActiveSession_GetRegisteredPlayerCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACTIVESESSION_GETREGISTEREDPLAYERCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_ActiveSession_GetRegisteredPlayerCountOptions {
        _tagEOS_ActiveSession_GetRegisteredPlayerCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_ActiveSession_GetRegisteredPlayerCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACTIVESESSION_GETREGISTEREDPLAYERCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/**
 * Top level details about an active session
 * 
 * - see: release func: EOS_ActiveSession_Info_Release
 */
public struct SwiftEOS_ActiveSession_Info: SwiftEOSObject {

    /** API Version: Set this to EOS_ACTIVESESSION_INFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session  */
    public let SessionName: String?

    /** The Product User ID of the local user who created or joined the session  */
    public let LocalUserId: EOS_ProductUserId?

    /** Current state of the session  */
    public let State: EOS_EOnlineSessionState

    /** Session details  */
    public let SessionDetails: SwiftEOS_SessionDetails_Info?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_ActiveSession_Info {
        try _tagEOS_ActiveSession_Info(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            LocalUserId: LocalUserId,
            State: State,
            SessionDetails: try pointerManager.managedPointer(copyingValueOrNilPointer: SessionDetails?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_ActiveSession_Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.LocalUserId = sdkObject.LocalUserId
        self.State = sdkObject.State
        self.SessionDetails = try SwiftEOS_SessionDetails_Info.init(sdkObject: sdkObject.SessionDetails.pointee)
    }
}
