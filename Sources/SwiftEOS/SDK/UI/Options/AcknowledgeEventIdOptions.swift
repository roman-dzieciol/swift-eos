import Foundation
import EOSSDK

/** Input parameters for the `EOS_UI_AcknowledgeEventId`. */
public struct SwiftEOS_UI_AcknowledgeEventIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID being acknowledged. */
    public let UiEventId: EOS_UI_EventId

    /**
    The result to use for the acknowledgment.
    When acknowledging `EOS_Presence_JoinGameAcceptedCallbackInfo` this should be the
    result code from the JoinSession call.
    */
    public let Result: EOS_EResult

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_AcknowledgeEventIdOptions {
        _tagEOS_UI_AcknowledgeEventIdOptions(
            ApiVersion: ApiVersion,
            UiEventId: UiEventId,
            Result: Result
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_AcknowledgeEventIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UiEventId = sdkObject.UiEventId
        self.Result = sdkObject.Result
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST`.
    - Parameter UiEventId: The ID being acknowledged.
    - Parameter Result: The result to use for the acknowledgment.
    When acknowledging `EOS_Presence_JoinGameAcceptedCallbackInfo` this should be the
    result code from the JoinSession call.
    */
    public init(
        ApiVersion: Int32 = EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST,
        UiEventId: EOS_UI_EventId,
        Result: EOS_EResult
    ) {
        self.ApiVersion = ApiVersion
        self.UiEventId = UiEventId
        self.Result = Result
    }
}
