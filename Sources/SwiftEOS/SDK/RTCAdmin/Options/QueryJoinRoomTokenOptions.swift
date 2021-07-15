import Foundation
import EOSSDK


/** Input parameters for the `EOS_RTCAdmin_QueryJoinRoomToken` function. */
public struct SwiftEOS_RTCAdmin_QueryJoinRoomTokenOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTCADMIN_QUERYJOINROOMTOKEN_API_LATEST`. */
    public let ApiVersion: Int32

    /** Product User ID for local user who is querying join room tokens. */
    public let LocalUserId: EOS_ProductUserId?

    /** Room name to request a token for. */
    public let RoomName: String?

    /**
    An array of Product User IDs indicating the users to retrieve a token for.

    - Note: ``EOS/_tagEOS_RTCAdmin_QueryJoinRoomTokenOptions/TargetUserIdsCount``:
    The number of users included in the query.
    */
    public let TargetUserIds: [EOS_ProductUserId]?

    /**
    Array of IP Addresses, one for each of the users we're querying tokens for.
    There should be TargetUserIdsCount Ip Addresses, you can set an entry to NULL if not known.
    If TargetUserIpAddresses is set to NULL IP Addresses will be ignored.
    IPv4 format: "0.0.0.0"
    IPv6 format: "0:0:0:0:0:0:0:0"
    */
    public let TargetUserIpAddresses: [String]?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_QueryJoinRoomTokenOptions {
        try _tagEOS_RTCAdmin_QueryJoinRoomTokenOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            TargetUserIds: pointerManager.managedMutablePointerToBuffer(copyingArray: TargetUserIds),
            TargetUserIdsCount: try safeNumericCast(exactly: TargetUserIds?.count ?? .zero),
            TargetUserIpAddresses: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: TargetUserIpAddresses?.map { 
                    $0.utf8CString })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_QueryJoinRoomTokenOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = stringFromOptionalCStringPointer(sdkObject.RoomName)
        self.TargetUserIds = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.TargetUserIds,
            count: sdkObject.TargetUserIdsCount
        )
        self.TargetUserIpAddresses = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.TargetUserIpAddresses,
            count: sdkObject.TargetUserIdsCount
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTCADMIN_QUERYJOINROOMTOKEN_API_LATEST`.
    - Parameter LocalUserId: Product User ID for local user who is querying join room tokens.
    - Parameter RoomName: Room name to request a token for.
    - Parameter TargetUserIds: An array of Product User IDs indicating the users to retrieve a token for.
    - Note: ``EOS/_tagEOS_RTCAdmin_QueryJoinRoomTokenOptions/TargetUserIdsCount``:
    The number of users included in the query.
    - Parameter TargetUserIpAddresses: Array of IP Addresses, one for each of the users we're querying tokens for.
    There should be TargetUserIdsCount Ip Addresses, you can set an entry to NULL if not known.
    If TargetUserIpAddresses is set to NULL IP Addresses will be ignored.
    IPv4 format: "0.0.0.0"
    IPv6 format: "0:0:0:0:0:0:0:0"
    */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_QUERYJOINROOMTOKEN_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        TargetUserIds: [EOS_ProductUserId]?,
        TargetUserIpAddresses: [String]?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.TargetUserIds = TargetUserIds
        self.TargetUserIpAddresses = TargetUserIpAddresses
    }
}
