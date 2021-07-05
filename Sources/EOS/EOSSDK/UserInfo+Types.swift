import Foundation
import EOSSDK

/**
 * A structure that contains the user information. These structures are created by EOS_UserInfo_CopyUserInfo and must be passed to EOS_UserInfo_Release. 
 * 
 * - see: release func: EOS_UserInfo_Release
 */
public struct SwiftEOS_UserInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user  */
    public let UserId: EOS_EpicAccountId?

    /** The name of the owner's country. This may be null  */
    public let Country: String?

    /** The display name. This may be null  */
    public let DisplayName: String?

    /** The ISO 639 language code for the user's preferred language. This may be null  */
    public let PreferredLanguage: String?

    /** A nickname/alias for the target user assigned by the local user. This may be null  */
    public let Nickname: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo {
        _tagEOS_UserInfo(
            ApiVersion: ApiVersion,
            UserId: UserId,
            Country: pointerManager.managedPointerToBuffer(copyingArray: Country?.utf8CString),
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString),
            PreferredLanguage: pointerManager.managedPointerToBuffer(copyingArray: PreferredLanguage?.utf8CString),
            Nickname: pointerManager.managedPointerToBuffer(copyingArray: Nickname?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.Country = String(cString: sdkObject.Country)
        self.DisplayName = String(cString: sdkObject.DisplayName)
        self.PreferredLanguage = String(cString: sdkObject.PreferredLanguage)
        self.Nickname = String(cString: sdkObject.Nickname)
    }
}

/** Input parameters for the EOS_UserInfo_CopyExternalUserInfoByAccountId function. */
public struct SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** The external account ID associated with the (external) user info to retrieve from the cache; cannot be null  */
    public let AccountId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions {
        _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountId = String(cString: sdkObject.AccountId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        AccountId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.AccountId = AccountId
    }
}

/** Input parameters for the EOS_UserInfo_CopyExternalUserInfoByAccountType function. */
public struct SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTTYPE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Account type of the external user info to retrieve from the cache  */
    public let AccountType: EOS_EExternalAccountType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions {
        _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId,
            AccountType: AccountType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountType = sdkObject.AccountType
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTTYPE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        AccountType: EOS_EExternalAccountType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.AccountType = AccountType
    }
}

/** Input parameters for the EOS_UserInfo_CopyExternalUserInfoByIndex function. */
public struct SwiftEOS_UserInfo_CopyExternalUserInfoByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Index of the external user info to retrieve from the cache  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions {
        try _tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYEXTERNALUSERINFOBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.Index = Index
    }
}

/** Input parameters for the EOS_UserInfo_CopyUserInfo function. */
public struct SwiftEOS_UserInfo_CopyUserInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_CopyUserInfoOptions {
        _tagEOS_UserInfo_CopyUserInfoOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_CopyUserInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYUSERINFO_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/**
 * Contains information about a single external user info.
 * 
 * - see: release func: EOS_UserInfo_ExternalUserInfo_Release
 */
public struct SwiftEOS_UserInfo_ExternalUserInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_EXTERNALUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The type of the external account  */
    public let AccountType: EOS_EExternalAccountType

    /** The ID of the external account. Can be null  */
    public let AccountId: String?

    /** The display name of the external account. Can be null  */
    public let DisplayName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_ExternalUserInfo {
        _tagEOS_UserInfo_ExternalUserInfo(
            ApiVersion: ApiVersion,
            AccountType: AccountType,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString),
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_ExternalUserInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AccountType = sdkObject.AccountType
        self.AccountId = String(cString: sdkObject.AccountId)
        self.DisplayName = String(cString: sdkObject.DisplayName)
    }
}

/** Input parameters for the EOS_UserInfo_GetExternalUserInfoCount function. */
public struct SwiftEOS_UserInfo_GetExternalUserInfoCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_GETEXTERNALUSERINFOCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_GetExternalUserInfoCountOptions {
        _tagEOS_UserInfo_GetExternalUserInfoCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_GetExternalUserInfoCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_GETEXTERNALUSERINFOCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_UserInfo_QueryUserInfoByDisplayName Function. */
public struct SwiftEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Display name of the player being queried. This memory is only valid during the scope of the callback.  */
    public let DisplayName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.DisplayName = String(cString: sdkObject.DisplayName)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_UserInfo_QueryUserInfoByDisplayName function. */
public struct SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_QUERYUSERINFOBYDISPLAYNAME_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Display name of the player being queried  */
    public let DisplayName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions {
        _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DisplayName = String(cString: sdkObject.DisplayName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_QUERYUSERINFOBYDISPLAYNAME_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        DisplayName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DisplayName = DisplayName
    }
}

/** Output parameters for the EOS_UserInfo_QueryUserInfoByExternalAccount Function. */
public struct SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local player who requested the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** External account id of the user whose information has been retrieved  */
    public let ExternalAccountId: String?

    /** Account type of the external account id  */
    public let AccountType: EOS_EExternalAccountType

    /** Account ID of the player whose information has been retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.ExternalAccountId = String(cString: sdkObject.ExternalAccountId)
        self.AccountType = sdkObject.AccountType
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_UserInfo_QueryUserInfoByExternalAccount function. */
public struct SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_QUERYUSERINFOBYEXTERNALACCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** External account ID of the user whose information is being retrieved  */
    public let ExternalAccountId: String?

    /** Account type of the external user info to query  */
    public let AccountType: EOS_EExternalAccountType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions {
        _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ExternalAccountId: pointerManager.managedPointerToBuffer(copyingArray: ExternalAccountId?.utf8CString),
            AccountType: AccountType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ExternalAccountId = String(cString: sdkObject.ExternalAccountId)
        self.AccountType = sdkObject.AccountType
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_QUERYUSERINFOBYEXTERNALACCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        ExternalAccountId: String?,
        AccountType: EOS_EExternalAccountType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ExternalAccountId = ExternalAccountId
        self.AccountType = AccountType
    }
}

/** Output parameters for the EOS_UserInfo_QueryUserInfo Function. */
public struct SwiftEOS_UserInfo_QueryUserInfoCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_UserInfo_QueryUserInfoCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_UserInfo_QueryUserInfo function. */
public struct SwiftEOS_UserInfo_QueryUserInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_QUERYUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_QueryUserInfoOptions {
        _tagEOS_UserInfo_QueryUserInfoOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_QUERYUSERINFO_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
