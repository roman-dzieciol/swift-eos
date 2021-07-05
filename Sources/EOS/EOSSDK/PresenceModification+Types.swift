import Foundation
import EOSSDK

/** Data for identifying which data records should be deleted. */
public struct SwiftEOS_PresenceModification_DataRecordId: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_DATARECORDID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The key to be deleted from the data record  */
    public let Key: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_DataRecordId?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_DataRecordId {
        _tagEOS_PresenceModification_DataRecordId(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }
}

/** Data for the EOS_PresenceModification_DeleteData function. */
public struct SwiftEOS_PresenceModification_DeleteDataOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The count of data keys to delete 
     * - array buffer: Records
     */
    public let RecordsCount: Int

    /**
     * The pointer to start of a sequential array 
     * - array num: RecordsCount
     */
    public let Records: [SwiftEOS_PresenceModification_DataRecordId]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_DeleteDataOptions {
        try _tagEOS_PresenceModification_DeleteDataOptions(
            ApiVersion: ApiVersion,
            RecordsCount: try safeNumericCast(exactly: RecordsCount),
            Records: try pointerManager.managedPointerToBuffer(copyingArray: Records?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_DeleteDataOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RecordsCount = try safeNumericCast(exactly: sdkObject.RecordsCount)
        self.Records = try sdkObject.Records?.array(safeNumericCast(exactly: sdkObject.RecordsCount)).compactMap { 
            try SwiftEOS_PresenceModification_DataRecordId.init(sdkObject: $0.pointee) }
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST,
        RecordsCount: Int,
        Records: [SwiftEOS_PresenceModification_DataRecordId]?
    ) {
        self.ApiVersion = ApiVersion
        self.RecordsCount = RecordsCount
        self.Records = Records
    }
}

/** Data for the EOS_PresenceModification_SetData function. */
public struct SwiftEOS_PresenceModification_SetDataOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_SETDATA_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The count of records to set 
     * - array buffer: Records
     */
    public let RecordsCount: Int

    /**
     * The pointer to start of a sequential array of Presence DataRecords 
     * - array num: RecordsCount
     */
    public let Records: [SwiftEOS_Presence_DataRecord]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetDataOptions {
        try _tagEOS_PresenceModification_SetDataOptions(
            ApiVersion: ApiVersion,
            RecordsCount: try safeNumericCast(exactly: RecordsCount),
            Records: try pointerManager.managedPointerToBuffer(copyingArray: Records?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetDataOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RecordsCount = try safeNumericCast(exactly: sdkObject.RecordsCount)
        self.Records = try sdkObject.Records?.array(safeNumericCast(exactly: sdkObject.RecordsCount)).compactMap { 
            try SwiftEOS_Presence_DataRecord.init(sdkObject: $0.pointee) }
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETDATA_API_LATEST,
        RecordsCount: Int,
        Records: [SwiftEOS_Presence_DataRecord]?
    ) {
        self.ApiVersion = ApiVersion
        self.RecordsCount = RecordsCount
        self.Records = Records
    }
}

/** Data for the EOS_PresenceModification_SetJoinInfo function. */
public struct SwiftEOS_PresenceModification_SetJoinInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * 
     * The string which will be advertised as this player's join info.
     * An application is expected to freely define the meaning of this string to use for connecting to an active game session.
     * The string should not exceed EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH in length.
     * This affects the ability of the Social Overlay to show game related actions to take in the player's social graph.
     * 
     * @note The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * @see EOS_Lobby_CreateLobbyOptions
     * @see EOS_Lobby_JoinLobbyOptions
     * @see EOS_Sessions_CreateSessionModificationOptions
     * @see EOS_Sessions_JoinSessionOptions
     */
    public let JoinInfo: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetJoinInfoOptions {
        _tagEOS_PresenceModification_SetJoinInfoOptions(
            ApiVersion: ApiVersion,
            JoinInfo: pointerManager.managedPointerToBuffer(copyingArray: JoinInfo?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetJoinInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.JoinInfo = String(cString: sdkObject.JoinInfo)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST,
        JoinInfo: String?
    ) {
        self.ApiVersion = ApiVersion
        self.JoinInfo = JoinInfo
    }
}

/** Data for the EOS_PresenceModification_SetRawRichText API. */
public struct SwiftEOS_PresenceModification_SetRawRichTextOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_SETRAWRICHTEXT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The status of the user  */
    public let RichText: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetRawRichTextOptions {
        _tagEOS_PresenceModification_SetRawRichTextOptions(
            ApiVersion: ApiVersion,
            RichText: pointerManager.managedPointerToBuffer(copyingArray: RichText?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetRawRichTextOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RichText = String(cString: sdkObject.RichText)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETRAWRICHTEXT_API_LATEST,
        RichText: String?
    ) {
        self.ApiVersion = ApiVersion
        self.RichText = RichText
    }
}

/** Data for the EOS_PresenceModification_SetStatus function. */
public struct SwiftEOS_PresenceModification_SetStatusOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_SETSTATUS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The status of the user  */
    public let Status: EOS_Presence_EStatus

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetStatusOptions {
        _tagEOS_PresenceModification_SetStatusOptions(
            ApiVersion: ApiVersion,
            Status: Status
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetStatusOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Status = sdkObject.Status
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETSTATUS_API_LATEST,
        Status: EOS_Presence_EStatus
    ) {
        self.ApiVersion = ApiVersion
        self.Status = Status
    }
}
