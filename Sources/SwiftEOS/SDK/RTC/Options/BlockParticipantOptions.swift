import Foundation
import EOSSDK


/** This struct is passed in with a call to `EOS_RTC_BlockParticipant`. */
public struct SwiftEOS_RTC_BlockParticipantOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTC_BLOCKPARTICIPANT_API_LATEST`. */
    public let ApiVersion: Int32

    /** Product User ID of the user trying to request this operation. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the users should be blocked on. */
    public let RoomName: String?

    /** Product User ID of the participant to block */
    public let ParticipantId: EOS_ProductUserId?

    /** Block or unblock the participant */
    public let bBlocked: Bool

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTC_BlockParticipantOptions {
        _tagEOS_RTC_BlockParticipantOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            ParticipantId: ParticipantId,
            bBlocked: eosBoolFromSwiftBool(bBlocked)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_BlockParticipantOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = stringFromOptionalCStringPointer(sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bBlocked = try swiftBoolFromEosBool(sdkObject.bBlocked)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTC_BLOCKPARTICIPANT_API_LATEST`.
    - Parameter LocalUserId: Product User ID of the user trying to request this operation.
    - Parameter RoomName: The room the users should be blocked on.
    - Parameter ParticipantId: Product User ID of the participant to block
    - Parameter bBlocked: Block or unblock the participant
    */
    public init(
        ApiVersion: Int32 = EOS_RTC_BLOCKPARTICIPANT_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bBlocked: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.bBlocked = bBlocked
    }
}
