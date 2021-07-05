import Foundation
import EOSSDK

/** Structure containing information for the auth expiration notification callback. */
public struct SwiftEOS_Connect_AddNotifyAuthExpirationOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_ADDNOTIFYAUTHEXPIRATION_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_AddNotifyAuthExpirationOptions {
        _tagEOS_Connect_AddNotifyAuthExpirationOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_AddNotifyAuthExpirationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_ADDNOTIFYAUTHEXPIRATION_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Structure containing information or the connect user login status change callback. */
public struct SwiftEOS_Connect_AddNotifyLoginStatusChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_AddNotifyLoginStatusChangedOptions {
        _tagEOS_Connect_AddNotifyLoginStatusChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_AddNotifyLoginStatusChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Output parameters for the EOS_Connect_OnAuthExpirationCallback function. */
public struct SwiftEOS_Connect_AuthExpirationCallbackInfo {

    /** The Product User ID of the local player whose status has changed.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_AuthExpirationCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_AuthExpirationCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_CopyProductUserExternalAccountByAccountId function. */
public struct SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying external account info from the cache.  */
    public let TargetUserId: EOS_ProductUserId?

    /** External auth service account ID to look for when copying external account info from the cache.  */
    public let AccountId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions {
        _tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountId = String(cString: sdkObject.AccountId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTID_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AccountId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AccountId = AccountId
    }
}

/** Input parameters for the EOS_Connect_CopyProductUserExternalAccountByAccountType function. */
public struct SwiftEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTTYPE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying external account info from the cache.  */
    public let TargetUserId: EOS_ProductUserId?

    /** External auth service account type to look for when copying external account info from the cache.  */
    public let AccountIdType: EOS_EExternalAccountType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions {
        _tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AccountIdType: AccountIdType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountIdType = sdkObject.AccountIdType
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTTYPE_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AccountIdType = AccountIdType
    }
}

/** Input parameters for the EOS_Connect_CopyProductUserExternalAccountByIndex function. */
public struct SwiftEOS_Connect_CopyProductUserExternalAccountByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying external account info from the cache.  */
    public let TargetUserId: EOS_ProductUserId?

    /** Index of the external account info to retrieve from the cache.  */
    public let ExternalAccountInfoIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions {
        try _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            ExternalAccountInfoIndex: try safeNumericCast(exactly: ExternalAccountInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.ExternalAccountInfoIndex = try safeNumericCast(exactly: sdkObject.ExternalAccountInfoIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        ExternalAccountInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.ExternalAccountInfoIndex = ExternalAccountInfoIndex
    }
}

/** Input parameters for the EOS_Connect_CopyProductUserInfo function. */
public struct SwiftEOS_Connect_CopyProductUserInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product user ID to look for when copying external account info from the cache.  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserInfoOptions {
        _tagEOS_Connect_CopyProductUserInfoOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_Connect_CreateDeviceId function. */
public struct SwiftEOS_Connect_CreateDeviceIdCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CreateDeviceIdCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_CreateDeviceIdCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_CreateDeviceId function. */
public struct SwiftEOS_Connect_CreateDeviceIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_CREATEDEVICEID_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * A freeform text description identifying the device type and model,
     * which can be used in account linking management to allow the player
     * and customer support to identify different devices linked to an EOS
     * user keychain. For example 'iPhone 6S' or 'PC Windows'.
     * The input string must be in UTF-8 character format, with a maximum
     * length of 64 characters. Longer string will be silently truncated.
     * This field is required to be present.
     */
    public let DeviceModel: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CreateDeviceIdOptions {
        _tagEOS_Connect_CreateDeviceIdOptions(
            ApiVersion: ApiVersion,
            DeviceModel: pointerManager.managedPointerToBuffer(copyingArray: DeviceModel?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CreateDeviceIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DeviceModel = String(cString: sdkObject.DeviceModel)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_CREATEDEVICEID_API_LATEST,
        DeviceModel: String?
    ) {
        self.ApiVersion = ApiVersion
        self.DeviceModel = DeviceModel
    }
}

/** Output parameters for the EOS_Connect_CreateUser function. */
public struct SwiftEOS_Connect_CreateUserCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** If the operation succeeded, this is the Product User ID of the local user who was created.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CreateUserCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_CreateUserCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_CreateUser function. */
public struct SwiftEOS_Connect_CreateUserOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_CREATEUSER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Continuance token from previous call to EOS_Connect_Login  */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CreateUserOptions {
        _tagEOS_Connect_CreateUserOptions(
            ApiVersion: ApiVersion,
            ContinuanceToken: ContinuanceToken
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CreateUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ContinuanceToken = sdkObject.ContinuanceToken
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_CREATEUSER_API_LATEST,
        ContinuanceToken: EOS_ContinuanceToken?
    ) {
        self.ApiVersion = ApiVersion
        self.ContinuanceToken = ContinuanceToken
    }
}

/**
 * A structure that contains external login credentials.
 * This is part of the input structure EOS_Connect_LoginOptions.
 * 
 * @see EOS_EExternalCredentialType
 * @see EOS_Connect_Login
 */
public struct SwiftEOS_Connect_Credentials: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_CREDENTIALS_API_LATEST.  */
    public let ApiVersion: Int32

    /** External token associated with the user logging in.  */
    public let Token: String?

    /** Type of external login; identifies the auth method to use.  */
    public let `Type`: EOS_EExternalCredentialType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_Credentials?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Token = String(cString: sdkObject.Token)
        self.`Type` = sdkObject.`Type`
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_Credentials {
        _tagEOS_Connect_Credentials(
            ApiVersion: ApiVersion,
            Token: pointerManager.managedPointerToBuffer(copyingArray: Token?.utf8CString),
            `Type`: `Type`
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_CREDENTIALS_API_LATEST,
        Token: String?,
        `Type`: EOS_EExternalCredentialType
    ) {
        self.ApiVersion = ApiVersion
        self.Token = Token
        self.`Type` = `Type`
    }
}

/** Output parameters for the EOS_Connect_DeleteDeviceId function. */
public struct SwiftEOS_Connect_DeleteDeviceIdCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_DeleteDeviceIdCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_DeleteDeviceIdCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_DeleteDeviceId function. */
public struct SwiftEOS_Connect_DeleteDeviceIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_DELETEDEVICEID_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_DeleteDeviceIdOptions {
        _tagEOS_Connect_DeleteDeviceIdOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_DeleteDeviceIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_DELETEDEVICEID_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/**
 * Contains information about an external account info
 * 
 * - see: release func: EOS_Connect_ExternalAccountInfo_Release
 */
public struct SwiftEOS_Connect_ExternalAccountInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_EXTERNALACCOUNTINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the target user.  */
    public let ProductUserId: EOS_ProductUserId?

    /** Display name, can be null if not set.  */
    public let DisplayName: String?

    /** External account ID.  */
    public let AccountId: String?

    /** The identity provider that owns the external account.  */
    public let AccountIdType: EOS_EExternalAccountType

    /** The POSIX timestamp for the time the user last logged in, or EOS_CONNECT_TIME_UNDEFINED.  */
    public let LastLoginTime: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_ExternalAccountInfo {
        try _tagEOS_Connect_ExternalAccountInfo(
            ApiVersion: ApiVersion,
            ProductUserId: ProductUserId,
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString),
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString),
            AccountIdType: AccountIdType,
            LastLoginTime: try safeNumericCast(exactly: LastLoginTime)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_ExternalAccountInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ProductUserId = sdkObject.ProductUserId
        self.DisplayName = String(cString: sdkObject.DisplayName)
        self.AccountId = String(cString: sdkObject.AccountId)
        self.AccountIdType = sdkObject.AccountIdType
        self.LastLoginTime = try safeNumericCast(exactly: sdkObject.LastLoginTime)
    }
}

/** Input parameters for the EOS_Connect_GetExternalAccountMapping function. */
public struct SwiftEOS_Connect_GetExternalAccountMappingsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_GETEXTERNALACCOUNTMAPPING_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user who is querying account mappings.  */
    public let LocalUserId: EOS_ProductUserId?

    /** External auth service supplying the account IDs in string form.  */
    public let AccountIdType: EOS_EExternalAccountType

    /** Target user to retrieve the mapping for, as an external account ID.  */
    public let TargetExternalUserId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_GetExternalAccountMappingsOptions {
        _tagEOS_Connect_GetExternalAccountMappingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType: AccountIdType,
            TargetExternalUserId: pointerManager.managedPointerToBuffer(copyingArray: TargetExternalUserId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_GetExternalAccountMappingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType = sdkObject.AccountIdType
        self.TargetExternalUserId = String(cString: sdkObject.TargetExternalUserId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_GETEXTERNALACCOUNTMAPPING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        TargetExternalUserId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType = AccountIdType
        self.TargetExternalUserId = TargetExternalUserId
    }
}

/** Input parameters for the EOS_Connect_GetProductUserExternalAccountCount function. */
public struct SwiftEOS_Connect_GetProductUserExternalAccountCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_GETPRODUCTUSEREXTERNALACCOUNTCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to look for when getting external account info count from the cache.  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_GetProductUserExternalAccountCountOptions {
        _tagEOS_Connect_GetProductUserExternalAccountCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_GetProductUserExternalAccountCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_GETPRODUCTUSEREXTERNALACCOUNTCOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}

/** Input parameters for the EOS_Connect_GetProductUserIdMapping function. */
public struct SwiftEOS_Connect_GetProductUserIdMappingOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_GETPRODUCTUSERIDMAPPING_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user that is querying account mappings.  */
    public let LocalUserId: EOS_ProductUserId?

    /** External auth service mapping to retrieve.  */
    public let AccountIdType: EOS_EExternalAccountType

    /** The Product User ID of the user whose information is being requested.  */
    public let TargetProductUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_GetProductUserIdMappingOptions {
        _tagEOS_Connect_GetProductUserIdMappingOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType: AccountIdType,
            TargetProductUserId: TargetProductUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_GetProductUserIdMappingOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType = sdkObject.AccountIdType
        self.TargetProductUserId = sdkObject.TargetProductUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_GETPRODUCTUSERIDMAPPING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        TargetProductUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType = AccountIdType
        self.TargetProductUserId = TargetProductUserId
    }
}

/** Output parameters for the EOS_Connect_LinkAccount function. */
public struct SwiftEOS_Connect_LinkAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the existing, logged-in user whose account was linked (on success).  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LinkAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_LinkAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_LinkAccount function. */
public struct SwiftEOS_Connect_LinkAccountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_LINKACCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The existing logged in product user for which to link the external account described by the continuance token.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Continuance token from previous call to EOS_Connect_Login.  */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_LinkAccountOptions {
        _tagEOS_Connect_LinkAccountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ContinuanceToken: ContinuanceToken
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LinkAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ContinuanceToken = sdkObject.ContinuanceToken
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_LINKACCOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        ContinuanceToken: EOS_ContinuanceToken?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ContinuanceToken = ContinuanceToken
    }
}

/** Output parameters for the EOS_Connect_Login function. */
public struct SwiftEOS_Connect_LoginCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** If login was succesful, this is the Product User ID of the local player that logged in.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * 
     * If the user was not found with credentials passed into EOS_Connect_Login, 
     * this continuance token can be passed to either EOS_Connect_CreateUser 
     * or EOS_Connect_LinkAccount to continue the flow.
     */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LoginCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.ContinuanceToken = sdkObject.ContinuanceToken
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_LoginCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_Login function. */
public struct SwiftEOS_Connect_LoginOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_LOGIN_API_LATEST.  */
    public let ApiVersion: Int32

    /** Credentials specified for a given login method  */
    public let Credentials: SwiftEOS_Connect_Credentials?

    /**
     * Additional non-authoritative information about the local user.
     * This field is required to be set and only used when authenticating the user using Apple, Google, Nintendo Account, Nintendo Service Account, Oculus or the Device ID feature login.
     * When using other identity providers, set to NULL.
     */
    public let UserLoginInfo: SwiftEOS_Connect_UserLoginInfo?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_LoginOptions {
        try _tagEOS_Connect_LoginOptions(
            ApiVersion: ApiVersion,
            Credentials: try pointerManager.managedPointer(copyingValueOrNilPointer: Credentials?.buildSdkObject(pointerManager: pointerManager)),
            UserLoginInfo: try pointerManager.managedPointer(copyingValueOrNilPointer: UserLoginInfo?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LoginOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Credentials = try SwiftEOS_Connect_Credentials.init(sdkObject: sdkObject.Credentials?.pointee)
        self.UserLoginInfo = try SwiftEOS_Connect_UserLoginInfo.init(sdkObject: sdkObject.UserLoginInfo?.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_LOGIN_API_LATEST,
        Credentials: SwiftEOS_Connect_Credentials?,
        UserLoginInfo: SwiftEOS_Connect_UserLoginInfo?
    ) {
        self.ApiVersion = ApiVersion
        self.Credentials = Credentials
        self.UserLoginInfo = UserLoginInfo
    }
}

/** Output parameters for the EOS_Connect_OnLoginStatusChangedCallback function. */
public struct SwiftEOS_Connect_LoginStatusChangedCallbackInfo {

    /** The Product User ID of the local player whose status has changed.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The status prior to the change.  */
    public let PreviousStatus: EOS_ELoginStatus

    /** The status at the time of the notification.  */
    public let CurrentStatus: EOS_ELoginStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LoginStatusChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.PreviousStatus = sdkObject.PreviousStatus
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_LoginStatusChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Connect_QueryExternalAccountMappings function. */
public struct SwiftEOS_Connect_QueryExternalAccountMappingsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the existing, logged-in user who made the request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_QueryExternalAccountMappingsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_QueryExternalAccountMappingsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_QueryExternalAccountMappings function. */
public struct SwiftEOS_Connect_QueryExternalAccountMappingsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_QUERYEXTERNALACCOUNTMAPPINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user who is querying account mappings.  */
    public let LocalUserId: EOS_ProductUserId?

    /** External auth service supplying the account IDs in string form.  */
    public let AccountIdType: EOS_EExternalAccountType

    /**
     * An array of external account IDs to map to the product user ID representation. 
     * - array num: ExternalAccountIdCount
     */
    public let ExternalAccountIds: [String]?

    /**
     * Number of account IDs to query. 
     * - array buffer: ExternalAccountIds
     */
    public let ExternalAccountIdCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_QueryExternalAccountMappingsOptions {
        try _tagEOS_Connect_QueryExternalAccountMappingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType: AccountIdType,
            ExternalAccountIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: ExternalAccountIds?.map { 
                    $0.utf8CString }),
            ExternalAccountIdCount: try safeNumericCast(exactly: ExternalAccountIdCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_QueryExternalAccountMappingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType = sdkObject.AccountIdType
        self.ExternalAccountIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.ExternalAccountIds,
            count: sdkObject.ExternalAccountIdCount
        )
        self.ExternalAccountIdCount = try safeNumericCast(exactly: sdkObject.ExternalAccountIdCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_QUERYEXTERNALACCOUNTMAPPINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        ExternalAccountIds: [String]?,
        ExternalAccountIdCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType = AccountIdType
        self.ExternalAccountIds = ExternalAccountIds
        self.ExternalAccountIdCount = ExternalAccountIdCount
    }
}

/** Output parameters for the EOS_Connect_QueryProductUserIdMappings function. */
public struct SwiftEOS_Connect_QueryProductUserIdMappingsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the existing, logged-in user who made the request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_QueryProductUserIdMappingsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_QueryProductUserIdMappingsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_QueryProductUserIdMappings function. */
public struct SwiftEOS_Connect_QueryProductUserIdMappingsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_QUERYPRODUCTUSERIDMAPPINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user who is querying account mappings.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Deprecated - all external mappings are included in this call, it is no longer necessary to specify this value.  */
    public let AccountIdType_DEPRECATED: EOS_EExternalAccountType

    /**
     * An array of Product User IDs to query for the given external account representation. 
     * - array num: ProductUserIdCount
     */
    public let ProductUserIds: [EOS_ProductUserId]?

    /**
     * Number of Product User IDs to query. 
     * - array buffer: ProductUserIds
     */
    public let ProductUserIdCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_QueryProductUserIdMappingsOptions {
        try _tagEOS_Connect_QueryProductUserIdMappingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType_DEPRECATED: AccountIdType_DEPRECATED,
            ProductUserIds: pointerManager.managedMutablePointerToBuffer(copyingArray: ProductUserIds),
            ProductUserIdCount: try safeNumericCast(exactly: ProductUserIdCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_QueryProductUserIdMappingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType_DEPRECATED = sdkObject.AccountIdType_DEPRECATED
        self.ProductUserIds = try trivialArrayFromTrivialPointer(
            start: sdkObject.ProductUserIds,
            count: sdkObject.ProductUserIdCount
        )
        self.ProductUserIdCount = try safeNumericCast(exactly: sdkObject.ProductUserIdCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_QUERYPRODUCTUSERIDMAPPINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType_DEPRECATED: EOS_EExternalAccountType,
        ProductUserIds: [EOS_ProductUserId]?,
        ProductUserIdCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType_DEPRECATED = AccountIdType_DEPRECATED
        self.ProductUserIds = ProductUserIds
        self.ProductUserIdCount = ProductUserIdCount
    }
}

/** Output parameters for the EOS_Connect_TransferDeviceIdAccount Function. */
public struct SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /**
     * The ProductUserIdToPreserve that was passed to the original EOS_Connect_TransferDeviceIdAccount call.
     * On successful operation, this EOS_ProductUserId will have a valid authentication session
     * and the other EOS_ProductUserId value has been discarded and lost forever.
     * The application should remove any registered notification callbacks for the discarded EOS_ProductUserId as obsolete.
     */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_TransferDeviceIdAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_TransferDeviceIdAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_TransferDeviceIdAccount Function. */
public struct SwiftEOS_Connect_TransferDeviceIdAccountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_TRANSFERDEVICEIDACCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The primary product user id, currently logged in, that is already associated with a real external user account (such as Epic Games, PlayStation(TM)Network, Xbox Live and other).
     * The account linking keychain that owns this product user will be preserved and receive
     * the Device ID login credentials under it.
     */
    public let PrimaryLocalUserId: EOS_ProductUserId?

    /**
     * The product user id, currently logged in, that has been originally created using the anonymous local Device ID login type,
     * and whose Device ID login will be transferred to the keychain of the PrimaryLocalUserId.
     */
    public let LocalDeviceUserId: EOS_ProductUserId?

    /**
     * Specifies which EOS_ProductUserId (i.e. game progression) will be preserved in the operation.
     * After a successful transfer operation, subsequent logins using the same external account or
     * the same local Device ID login will return user session for the ProductUserIdToPreserve.
     * Set to either PrimaryLocalUserId or LocalDeviceUserId.
     */
    public let ProductUserIdToPreserve: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_TransferDeviceIdAccountOptions {
        _tagEOS_Connect_TransferDeviceIdAccountOptions(
            ApiVersion: ApiVersion,
            PrimaryLocalUserId: PrimaryLocalUserId,
            LocalDeviceUserId: LocalDeviceUserId,
            ProductUserIdToPreserve: ProductUserIdToPreserve
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_TransferDeviceIdAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PrimaryLocalUserId = sdkObject.PrimaryLocalUserId
        self.LocalDeviceUserId = sdkObject.LocalDeviceUserId
        self.ProductUserIdToPreserve = sdkObject.ProductUserIdToPreserve
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_TRANSFERDEVICEIDACCOUNT_API_LATEST,
        PrimaryLocalUserId: EOS_ProductUserId?,
        LocalDeviceUserId: EOS_ProductUserId?,
        ProductUserIdToPreserve: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.PrimaryLocalUserId = PrimaryLocalUserId
        self.LocalDeviceUserId = LocalDeviceUserId
        self.ProductUserIdToPreserve = ProductUserIdToPreserve
    }
}

/** Output parameters for the EOS_Connect_UnlinkAccount Function. */
public struct SwiftEOS_Connect_UnlinkAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /**
     * The product user that was subject for the unlinking operation.
     * On a successful operation, the local authentication session for the product user will have been invalidated.
     * As such, the LocalUserId value will no longer be valid in any context unless the user is logged into it again.
     */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_UnlinkAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_UnlinkAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Connect_UnlinkAccount Function. */
public struct SwiftEOS_Connect_UnlinkAccountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_UNLINKACCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Existing logged in product user that is subject for the unlinking operation.
     * The external account that was used to login to the product user will be unlinked from the owning keychain.
     * On a successful operation, the product user will be logged out as the external account used to authenticate the user was unlinked from the owning keychain.
     */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_UnlinkAccountOptions {
        _tagEOS_Connect_UnlinkAccountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_UnlinkAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_UNLINKACCOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/**
 * Additional information about the local user.
 * As the information passed here is client-controlled and not part of the user authentication tokens,
 * it is only treated as non-authoritative informational data to be used by some of the feature services.
 * For example displaying player names in Leaderboards rankings.
 */
public struct SwiftEOS_Connect_UserLoginInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_USERLOGININFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The user's display name on the identity provider systems as UTF-8 encoded null-terminated string.
     * The length of the name can be at maximum up to EOS_CONNECT_USERLOGININFO_DISPLAYNAME_MAX_LENGTH bytes.
     */
    public let DisplayName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_UserLoginInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DisplayName = String(cString: sdkObject.DisplayName)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_UserLoginInfo {
        _tagEOS_Connect_UserLoginInfo(
            ApiVersion: ApiVersion,
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString)
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_USERLOGININFO_API_LATEST,
        DisplayName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.DisplayName = DisplayName
    }
}
