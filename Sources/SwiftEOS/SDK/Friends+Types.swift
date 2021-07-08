import Foundation
import EOSSDK

/** Output parameters for the EOS_Friends_AcceptInvite Function. */
public struct SwiftEOS_Friends_AcceptInviteCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if an invite was accepted, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who is accepting the friends list invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who sent the local user a friends list invitation  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_AcceptInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Friends_AcceptInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Friends_AcceptInvite function. */
public struct SwiftEOS_Friends_AcceptInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_ACCEPTINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user who is accepting the friends list invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who sent the friends list invitation  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_AcceptInviteOptions {
        _tagEOS_Friends_AcceptInviteOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_AcceptInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_ACCEPTINVITE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Input parameters for the EOS_Friends_AddNotifyFriendsUpdate function.   */
public struct SwiftEOS_Friends_AddNotifyFriendsUpdateOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_ADDNOTIFYFRIENDSUPDATE_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_AddNotifyFriendsUpdateOptions {
        _tagEOS_Friends_AddNotifyFriendsUpdateOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_AddNotifyFriendsUpdateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_ADDNOTIFYFRIENDSUPDATE_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Output parameters for the EOS_Friends_DeleteFriend Function. */
public struct SwiftEOS_Friends_DeleteFriendCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if an invite was accepted, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** Context that is passed into EOS_Friends_DeleteFriend  */
    public let ClientData: UnsafeMutableRawPointer?

    /** The Epic Online Services Account ID of the user who is removing a user from their friends list.  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who is being removed from the friends list.  */
    public let TargetUserId: EOS_EpicAccountId?
}

/** Input parameters for the EOS_Friends_DeleteFriend function. */
public struct SwiftEOS_Friends_DeleteFriendOptions {

    /** API Version: Set this to EOS_FRIENDS_DELETEFRIEND_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user who is deleting a friend.  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user to remove from the friends list.  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_DELETEFRIEND_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_DeleteFriendOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_DeleteFriendOptions {
        _tagEOS_Friends_DeleteFriendOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }
}

/** Input parameters for the EOS_Friends_GetFriendAtIndex function. */
public struct SwiftEOS_Friends_GetFriendAtIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_GETFRIENDATINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose friend list is being queried  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Index into the friend list. This value must be between 0 and EOS_Friends_GetFriendsCount-1 inclusively.  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_GetFriendAtIndexOptions {
        try _tagEOS_Friends_GetFriendAtIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_GetFriendAtIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_GETFRIENDATINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}

/** Input parameters for the EOS_Friends_GetFriendsCount function. */
public struct SwiftEOS_Friends_GetFriendsCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_GETFRIENDSCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose friends should be counted  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_GetFriendsCountOptions {
        _tagEOS_Friends_GetFriendsCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_GetFriendsCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_GETFRIENDSCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Friends_GetStatus function. */
public struct SwiftEOS_Friends_GetStatusOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_GETSTATUS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged in user  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose friendship status with the local user is being queried  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_GetStatusOptions {
        _tagEOS_Friends_GetStatusOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_GetStatusOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_GETSTATUS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Structure containing information about a friend status update. */
public struct SwiftEOS_Friends_OnFriendsUpdateInfo {

    /** The Epic Online Services Account ID of the local user who is receiving the update  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose status is being updated.  */
    public let TargetUserId: EOS_EpicAccountId?

    /** The previous status of the user.  */
    public let PreviousStatus: EOS_EFriendsStatus

    /** The current status of the user.  */
    public let CurrentStatus: EOS_EFriendsStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_OnFriendsUpdateInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.PreviousStatus = sdkObject.PreviousStatus
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Friends_OnFriendsUpdateInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Friends_QueryFriends Function. These parameters are received through the callback provided to EOS_Friends_QueryFriends */
public struct SwiftEOS_Friends_QueryFriendsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user whose friends were queried  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_QueryFriendsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Friends_QueryFriendsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Friends_QueryFriends function. */
public struct SwiftEOS_Friends_QueryFriendsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_QUERYFRIENDS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user whose friends list you want to retrieve  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_QueryFriendsOptions {
        _tagEOS_Friends_QueryFriendsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_QueryFriendsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_QUERYFRIENDS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Output parameters for the EOS_Friends_RejectInvite Function. */
public struct SwiftEOS_Friends_RejectInviteCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if an invite was accepted, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who is rejecting the friends list invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who sent the friends list invitation  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_RejectInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Friends_RejectInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Friends_RejectInvite function. */
public struct SwiftEOS_Friends_RejectInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_REJECTINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user who is rejecting a friends list invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who sent the friends list invitation  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_RejectInviteOptions {
        _tagEOS_Friends_RejectInviteOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_RejectInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_REJECTINVITE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_Friends_SendInvite API. */
public struct SwiftEOS_Friends_SendInviteCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if the invitation was sent, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who sent the friends list invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user to whom the friends list invitation was sent  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_SendInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Friends_SendInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Friends_SendInvite function. */
public struct SwiftEOS_Friends_SendInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_SENDINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user who is sending the friends list invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who is receiving the friends list invitation  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_SendInviteOptions {
        _tagEOS_Friends_SendInviteOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_SendInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_SENDINVITE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
