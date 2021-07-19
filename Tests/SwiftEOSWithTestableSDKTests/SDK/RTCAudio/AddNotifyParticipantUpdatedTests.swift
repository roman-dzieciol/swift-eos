import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyParticipantUpdatedTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyParticipantUpdated_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_AddNotifyParticipantUpdated = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_AddNotifyParticipantUpdated")
            return .zero }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo> = try object.AddNotifyParticipantUpdated(
            LocalUserId: nil,
            RoomName: nil,
            CompletionDelegate: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RoomName)
                XCTAssertNil(arg0.ParticipantId)
                XCTAssertEqual(arg0.bSpeaking, false)
                XCTAssertEqual(arg0.AudioStatus, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo sdk: _tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_AddNotifyParticipantUpdated"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
