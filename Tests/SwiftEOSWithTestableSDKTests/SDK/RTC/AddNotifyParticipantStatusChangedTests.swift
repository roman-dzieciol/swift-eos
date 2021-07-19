import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_AddNotifyParticipantStatusChangedTests: XCTestCase {
    public func testEOS_RTC_AddNotifyParticipantStatusChanged_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTC_AddNotifyParticipantStatusChanged = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTC_AddNotifyParticipantStatusChanged")
            return .zero }
        let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo> = try object.AddNotifyParticipantStatusChanged(
            LocalUserId: nil,
            RoomName: nil,
            CompletionDelegate: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RoomName)
                XCTAssertNil(arg0.ParticipantId)
                XCTAssertEqual(arg0.ParticipantStatus, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.ParticipantMetadata)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo sdk: _tagEOS_RTC_ParticipantStatusChangedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTC_AddNotifyParticipantStatusChanged"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
