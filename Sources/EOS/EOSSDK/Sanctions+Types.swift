import Foundation
import EOSSDK

/** Input parameters for the EOS_Sanctions_CopyPlayerSanctionByIndex function */
public struct SwiftEOS_Sanctions_CopyPlayerSanctionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the user whose active sanctions are to be copied  */
    public let TargetUserId: EOS_ProductUserId?

    /** Index of the sanction to retrieve from the cache  */
    public let SanctionIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions {
        try _tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            SanctionIndex: try safeNumericCast(exactly: SanctionIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.SanctionIndex = try safeNumericCast(exactly: sdkObject.SanctionIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        SanctionIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.SanctionIndex = SanctionIndex
    }
}

/** Input parameters for the EOS_Sanctions_GetPlayerSanctionCount function. */
public struct SwiftEOS_Sanctions_GetPlayerSanctionCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SANCTIONS_GETPLAYERSANCTIONCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the user whose sanction count should be returned  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_GetPlayerSanctionCountOptions {
        _tagEOS_Sanctions_GetPlayerSanctionCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_GetPlayerSanctionCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SANCTIONS_GETPLAYERSANCTIONCOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}

/**
 * Contains information about a single player sanction.
 * 
 * - see: release func: EOS_Sanctions_PlayerSanction_Release
 */
public struct SwiftEOS_Sanctions_PlayerSanction: SwiftEOSObject {

    /** API Version: Set this to EOS_SANCTIONS_PLAYERSANCTION_API_LATEST.  */
    public let ApiVersion: Int32

    /** The POSIX timestamp when the sanction was placed  */
    public let TimePlaced: Int

    /** The action associated with this sanction  */
    public let Action: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_PlayerSanction {
        try _tagEOS_Sanctions_PlayerSanction(
            ApiVersion: ApiVersion,
            TimePlaced: try safeNumericCast(exactly: TimePlaced),
            Action: pointerManager.managedPointerToBuffer(copyingArray: Action?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_PlayerSanction?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TimePlaced = try safeNumericCast(exactly: sdkObject.TimePlaced)
        self.Action = String(cString: sdkObject.Action)
    }
}

/** Output parameters for the EOS_Sanctions_QueryActivePlayerSanctions function. */
public struct SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Target Product User ID that was passed to EOS_Sanctions_QueryActivePlayerSanctions.  */
    public let TargetUserId: EOS_ProductUserId?

    /** The Product User ID of the local user who initiated this request, if applicable.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.TargetUserId = sdkObject.TargetUserId
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sanctions_QueryActivePlayerSanctions API. */
public struct SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SANCTIONS_QUERYACTIVEPLAYERSANCTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the user whose active sanctions are to be retrieved.  */
    public let TargetUserId: EOS_ProductUserId?

    /** The Product User ID of the local user who initiated this request. Dedicated servers should set this to null.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions {
        _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SANCTIONS_QUERYACTIVEPLAYERSANCTIONS_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.LocalUserId = LocalUserId
    }
}
