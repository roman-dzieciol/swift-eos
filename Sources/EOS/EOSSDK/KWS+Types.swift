import Foundation
import EOSSDK
public struct SwiftEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_ADDNOTIFYPERMISSIONSUPDATERECEIVED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions {
        _tagEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_ADDNOTIFYPERMISSIONSUPDATERECEIVED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_KWS_CopyPermissionByIndex function. */
public struct SwiftEOS_KWS_CopyPermissionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose permissions are being accessed  */
    public let LocalUserId: EOS_ProductUserId?

    /** The index of the permission to get.  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_CopyPermissionByIndexOptions {
        try _tagEOS_KWS_CopyPermissionByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_CopyPermissionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}

/** Output parameters for the EOS_KWS_CreateUserOptions Function. These parameters are received through the callback provided to EOS_KWS_CreateUser */
public struct SwiftEOS_KWS_CreateUserCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Local user that created a KWS entry  */
    public let LocalUserId: EOS_ProductUserId?

    /** KWS UserId created  */
    public let KWSUserId: String?

    /** Is this user a minor  */
    public let bIsMinor: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_CreateUserCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.KWSUserId = String(cString: sdkObject.KWSUserId)
        self.bIsMinor = try swiftBoolFromEosBool(sdkObject.bIsMinor)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_CreateUserCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_KWS_CreateUser function. */
public struct SwiftEOS_KWS_CreateUserOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_CREATEUSER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Local user creating a KWS entry  */
    public let LocalUserId: EOS_ProductUserId?

    /** Date of birth in ISO8601 form (YYYY-MM-DD)  */
    public let DateOfBirth: String?

    /** Parent email  */
    public let ParentEmail: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_CreateUserOptions {
        _tagEOS_KWS_CreateUserOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DateOfBirth: pointerManager.managedPointerToBuffer(copyingArray: DateOfBirth?.utf8CString),
            ParentEmail: pointerManager.managedPointerToBuffer(copyingArray: ParentEmail?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_CreateUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DateOfBirth = String(cString: sdkObject.DateOfBirth)
        self.ParentEmail = String(cString: sdkObject.ParentEmail)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_CREATEUSER_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        DateOfBirth: String?,
        ParentEmail: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DateOfBirth = DateOfBirth
        self.ParentEmail = ParentEmail
    }
}

/** Input parameters for the EOS_KWS_GetPermissionByKey function. */
public struct SwiftEOS_KWS_GetPermissionByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_GETPERMISSIONBYKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user getting permissions  */
    public let LocalUserId: EOS_ProductUserId?

    /** Permission name to query  */
    public let Key: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_GetPermissionByKeyOptions {
        _tagEOS_KWS_GetPermissionByKeyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_GetPermissionByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Key = String(cString: sdkObject.Key)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_GETPERMISSIONBYKEY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Key = Key
    }
}

/** Input parameters for the EOS_KWS_GetPermissionsCount function. */
public struct SwiftEOS_KWS_GetPermissionsCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose permissions are being accessed  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_GetPermissionsCountOptions {
        _tagEOS_KWS_GetPermissionsCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_GetPermissionsCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/**
 * 
 * - see: release func: EOS_KWS_PermissionStatus_Release
 */
public struct SwiftEOS_KWS_PermissionStatus: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_PERMISSIONSTATUS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the permission  */
    public let Name: String?

    /** Status of the permission  */
    public let Status: EOS_EKWSPermissionStatus

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_PermissionStatus {
        _tagEOS_KWS_PermissionStatus(
            ApiVersion: ApiVersion,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString),
            Status: Status
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_PermissionStatus?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Name = String(cString: sdkObject.Name)
        self.Status = sdkObject.Status
    }
}

/** Output parameters for the EOS_KWS_OnPermissionsUpdateReceivedCallback Function. */
public struct SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo {

    /** Recipient Local user id  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_KWS_QueryAgeGate Function. These parameters are received through the callback provided to EOS_KWS_QueryAgeGate */
public struct SwiftEOS_KWS_QueryAgeGateCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Country code determined for this request based on the local client's ip address that the backend resolves  */
    public let CountryCode: String?

    /** Age of consent in the given country  */
    public let AgeOfConsent: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_QueryAgeGateCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.CountryCode = String(cString: sdkObject.CountryCode)
        self.AgeOfConsent = try safeNumericCast(exactly: sdkObject.AgeOfConsent)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_QueryAgeGateCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_KWS_QueryAgeGate function. */
public struct SwiftEOS_KWS_QueryAgeGateOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_QUERYAGEGATE_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_QueryAgeGateOptions {
        _tagEOS_KWS_QueryAgeGateOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_QueryAgeGateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_QUERYAGEGATE_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Output parameters for the EOS_KWS_QueryPermissionsOptions Function. These parameters are received through the callback provided to EOS_KWS_QueryPermissions */
public struct SwiftEOS_KWS_QueryPermissionsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Local user querying their permisssions  */
    public let LocalUserId: EOS_ProductUserId?

    /** KWS UserId created  */
    public let KWSUserId: String?

    /** Date of birth in ISO8601 form (YYYY-MM-DD)  */
    public let DateOfBirth: String?

    /** Is this user a minor  */
    public let bIsMinor: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_QueryPermissionsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.KWSUserId = String(cString: sdkObject.KWSUserId)
        self.DateOfBirth = String(cString: sdkObject.DateOfBirth)
        self.bIsMinor = try swiftBoolFromEosBool(sdkObject.bIsMinor)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_QueryPermissionsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_KWS_QueryPermissions function. */
public struct SwiftEOS_KWS_QueryPermissionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_QUERYPERMISSIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Local user querying their permisssions  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_QueryPermissionsOptions {
        _tagEOS_KWS_QueryPermissionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_QueryPermissionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_QUERYPERMISSIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Output parameters for the EOS_KWS_RequestPermissionsOptions Function. These parameters are received through the callback provided to EOS_KWS_RequestPermissions */
public struct SwiftEOS_KWS_RequestPermissionsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Local user requesting new permisssions  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_RequestPermissionsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_RequestPermissionsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_KWS_RequestPermissions function. */
public struct SwiftEOS_KWS_RequestPermissionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_REQUESTPERMISSIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Local user requesting new permisssions  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * The number of permissions to request, may not exceed EOS_KWS_MAX_PERMISSIONS. Only new permissions need be included. 
     * - array buffer: PermissionKeys
     */
    public let PermissionKeyCount: Int

    /**
     * Names of the permissions to request (Setup with KWS) 
     * - array num: PermissionKeyCount
     */
    public let PermissionKeys: [String]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_RequestPermissionsOptions {
        try _tagEOS_KWS_RequestPermissionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            PermissionKeyCount: try safeNumericCast(exactly: PermissionKeyCount),
            PermissionKeys: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: PermissionKeys?.map { 
                    $0.utf8CString })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_RequestPermissionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.PermissionKeyCount = try safeNumericCast(exactly: sdkObject.PermissionKeyCount)
        self.PermissionKeys = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.PermissionKeys,
            count: sdkObject.PermissionKeyCount
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_REQUESTPERMISSIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        PermissionKeyCount: Int,
        PermissionKeys: [String]?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.PermissionKeyCount = PermissionKeyCount
        self.PermissionKeys = PermissionKeys
    }
}

/** Output parameters for the EOS_KWS_UpdateParentEmailOptions Function. These parameters are received through the callback provided to EOS_KWS_UpdateParentEmail */
public struct SwiftEOS_KWS_UpdateParentEmailCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Local user updating their parental email  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_UpdateParentEmailCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_UpdateParentEmailCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_KWS_UpdateParentEmail function. */
public struct SwiftEOS_KWS_UpdateParentEmailOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_UPDATEPARENTEMAIL_API_LATEST.  */
    public let ApiVersion: Int32

    /** Local user updating parental information  */
    public let LocalUserId: EOS_ProductUserId?

    /** New parent email  */
    public let ParentEmail: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_UpdateParentEmailOptions {
        _tagEOS_KWS_UpdateParentEmailOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ParentEmail: pointerManager.managedPointerToBuffer(copyingArray: ParentEmail?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_UpdateParentEmailOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ParentEmail = String(cString: sdkObject.ParentEmail)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_UPDATEPARENTEMAIL_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        ParentEmail: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ParentEmail = ParentEmail
    }
}
