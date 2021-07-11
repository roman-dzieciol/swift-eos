import Foundation
import EOSSDK

/**
Top level details about an active session

- Note: Release func: ``EOS_ActiveSession_Info_Release``
*/
public struct SwiftEOS_ActiveSession_Info: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACTIVESESSION_INFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of the session */
    public let SessionName: String?

    /** The Product User ID of the local user who created or joined the session */
    public let LocalUserId: EOS_ProductUserId?

    /** Current state of the session */
    public let State: EOS_EOnlineSessionState

    /** Session details */
    public let SessionDetails: SwiftEOS_SessionDetails_Info?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
        self.SessionDetails = try SwiftEOS_SessionDetails_Info.init(sdkObject: sdkObject.SessionDetails?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACTIVESESSION_INFO_API_LATEST`.
    - Parameter SessionName: Name of the session
    - Parameter LocalUserId: The Product User ID of the local user who created or joined the session
    - Parameter State: Current state of the session
    - Parameter SessionDetails: Session details
    */
    public init(
        ApiVersion: Int32 = EOS_ACTIVESESSION_INFO_API_LATEST,
        SessionName: String?,
        LocalUserId: EOS_ProductUserId?,
        State: EOS_EOnlineSessionState,
        SessionDetails: SwiftEOS_SessionDetails_Info?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.LocalUserId = LocalUserId
        self.State = State
        self.SessionDetails = SessionDetails
    }
}
