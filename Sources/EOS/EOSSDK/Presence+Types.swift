import Foundation
import EOSSDK
public struct SwiftEOS_Presence_AddNotifyJoinGameAcceptedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_ADDNOTIFYJOINGAMEACCEPTED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_AddNotifyJoinGameAcceptedOptions {
        _tagEOS_Presence_AddNotifyJoinGameAcceptedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_AddNotifyJoinGameAcceptedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_ADDNOTIFYJOINGAMEACCEPTED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Data for the EOS_Presence_AddNotifyOnPresenceChanged function. */
public struct SwiftEOS_Presence_AddNotifyOnPresenceChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_ADDNOTIFYONPRESENCECHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_AddNotifyOnPresenceChangedOptions {
        _tagEOS_Presence_AddNotifyOnPresenceChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_AddNotifyOnPresenceChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_ADDNOTIFYONPRESENCECHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Data for the EOS_Presence_CopyPresence function. */
public struct SwiftEOS_Presence_CopyPresenceOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_COPYPRESENCE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user making the request  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose cached presence data you want to copy from the cache  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_CopyPresenceOptions {
        _tagEOS_Presence_CopyPresenceOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_CopyPresenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_COPYPRESENCE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Data for the EOS_Presence_CreatePresenceModification function. */
public struct SwiftEOS_Presence_CreatePresenceModificationOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_CREATEPRESENCEMODIFICATION_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user's Epic Online Services Account ID  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_CreatePresenceModificationOptions {
        _tagEOS_Presence_CreatePresenceModificationOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_CreatePresenceModificationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_CREATEPRESENCEMODIFICATION_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/**
 * An individual presence data record that belongs to a EOS_Presence_Info object. This object is released when its parent EOS_Presence_Info object is released.
 * 
 * @see EOS_Presence_Info
 */
public struct SwiftEOS_Presence_DataRecord: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_DATARECORD_API_LATEST.  */
    public let ApiVersion: Int32

    /** The name of this data  */
    public let Key: String?

    /** The value of this data  */
    public let Value: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_DataRecord?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.Value = String(cString: sdkObject.Value)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_DataRecord {
        _tagEOS_Presence_DataRecord(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            Value: pointerManager.managedPointerToBuffer(copyingArray: Value?.utf8CString)
        )
    }
}

/** Data for the EOS_Presence_GetJoinInfo function. */
public struct SwiftEOS_Presence_GetJoinInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_GETJOININFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The local user's Epic Online Services Account ID  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID to query for join info; this value must either be a logged-in local user, or a friend of that user  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_GetJoinInfoOptions {
        _tagEOS_Presence_GetJoinInfoOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_GetJoinInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_GETJOININFO_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Data for the EOS_Presence_HasPresence function. */
public struct SwiftEOS_Presence_HasPresenceOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_HASPRESENCE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user making the request  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose cached presence data you want to locate  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_HasPresenceOptions {
        _tagEOS_Presence_HasPresenceOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_HasPresenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_HASPRESENCE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/**
 * All the known presence information for a specific user. This object must be released by calling EOS_Presence_Info_Release.
 * 
 * @see EOS_Presence_CopyPresence
 * @see EOS_Presence_Info_Release
 * 
 * - see: release func: EOS_Presence_Info_Release
 */
public struct SwiftEOS_Presence_Info: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_INFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The status of the user  */
    public let Status: EOS_Presence_EStatus

    /** The Epic Online Services Account ID of the user  */
    public let UserId: EOS_EpicAccountId?

    /** The product ID that the user is logged in from  */
    public let ProductId: String?

    /** The version of the product the user is logged in from  */
    public let ProductVersion: String?

    /** The platform of that the user is logged in from  */
    public let Platform: String?

    /** The rich-text of the user  */
    public let RichText: String?

    /**
     * The count of records available 
     * - array buffer: Records
     */
    public let RecordsCount: Int

    /**
     * The first data record, or NULL if RecordsCount is not at least 1 
     * - array num: RecordsCount
     */
    public let Records: [SwiftEOS_Presence_DataRecord]?

    /** The user-facing name for the product the user is logged in from  */
    public let ProductName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_Info {
        try _tagEOS_Presence_Info(
            ApiVersion: ApiVersion,
            Status: Status,
            UserId: UserId,
            ProductId: pointerManager.managedPointerToBuffer(copyingArray: ProductId?.utf8CString),
            ProductVersion: pointerManager.managedPointerToBuffer(copyingArray: ProductVersion?.utf8CString),
            Platform: pointerManager.managedPointerToBuffer(copyingArray: Platform?.utf8CString),
            RichText: pointerManager.managedPointerToBuffer(copyingArray: RichText?.utf8CString),
            RecordsCount: try safeNumericCast(exactly: RecordsCount),
            Records: try pointerManager.managedPointerToBuffer(copyingArray: Records?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            ProductName: pointerManager.managedPointerToBuffer(copyingArray: ProductName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Status = sdkObject.Status
        self.UserId = sdkObject.UserId
        self.ProductId = String(cString: sdkObject.ProductId)
        self.ProductVersion = String(cString: sdkObject.ProductVersion)
        self.Platform = String(cString: sdkObject.Platform)
        self.RichText = String(cString: sdkObject.RichText)
        self.RecordsCount = try safeNumericCast(exactly: sdkObject.RecordsCount)
        self.Records = try sdkObject.Records?.array(safeNumericCast(exactly: sdkObject.RecordsCount)).compactMap { 
            try SwiftEOS_Presence_DataRecord.init(sdkObject: $0.pointee) }
        self.ProductName = String(cString: sdkObject.ProductName)
    }
}

/** Output parameters for the EOS_Presence_OnJoinGameAcceptedCallback Function. */
public struct SwiftEOS_Presence_JoinGameAcceptedCallbackInfo {

    /**
     * 
     * The Join Info custom game-data string to use to join the target user.
     * Set to a null pointer to delete the value.
     */
    public let JoinInfo: String?

    /** The Epic Online Services Account ID of the user who accepted the invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who sent the invitation  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * 
     * If the value is not EOS_UI_EVENTID_INVALID then it must be passed back to the SDK using EOS_UI_AcknowledgeEventId.
     * This should be done after attempting to join the game and either succeeding or failing to connect.
     * This is necessary to allow the Social Overlay UI to manage the `Join` button.
     */
    public let UiEventId: EOS_UI_EventId

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_JoinGameAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.JoinInfo = String(cString: sdkObject.JoinInfo)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.UiEventId = sdkObject.UiEventId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_JoinGameAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Data containing which users presence has changed */
public struct SwiftEOS_Presence_PresenceChangedCallbackInfo {

    /** The Epic Online Services Account ID of the local user who is being informed for PresenceUserId's presence change  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who had their presence changed  */
    public let PresenceUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_PresenceChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.PresenceUserId = sdkObject.PresenceUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_PresenceChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** The result meta-data for a presence query. */
public struct SwiftEOS_Presence_QueryPresenceCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful query, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user who made this request  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose presence was potentially queried  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_QueryPresenceCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_QueryPresenceCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data for the EOS_Presence_QueryPresence function */
public struct SwiftEOS_Presence_QueryPresenceOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_QUERYPRESENCE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user making the request  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose presence data you want to retrieve; this value must be either the user making the request, or a friend of that user  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_QueryPresenceOptions {
        _tagEOS_Presence_QueryPresenceOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_QueryPresenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_QUERYPRESENCE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** The result meta-data from setting a user's presence. */
public struct SwiftEOS_Presence_SetPresenceCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if presence was successfully set, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user that had their presence set  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_SetPresenceCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_SetPresenceCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data for the EOS_Presence_SetPresence function. */
public struct SwiftEOS_Presence_SetPresenceOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_SETPRESENCE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user's Epic Online Services Account ID  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The handle to the presence update  */
    public let PresenceModificationHandle: EOS_HPresenceModification?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_SetPresenceOptions {
        _tagEOS_Presence_SetPresenceOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            PresenceModificationHandle: PresenceModificationHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_SetPresenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.PresenceModificationHandle = sdkObject.PresenceModificationHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_SETPRESENCE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        PresenceModificationHandle: EOS_HPresenceModification?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.PresenceModificationHandle = PresenceModificationHandle
    }
}
