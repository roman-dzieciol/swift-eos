import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyAudioOutputStateTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioOutputState_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_AddNotifyAudioOutputState = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioOutputState")
            return .zero }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo> = try object.AddNotifyAudioOutputState(
            LocalUserId: nil,
            RoomName: nil,
            CompletionDelegate: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RoomName)
                XCTAssertEqual(arg0.Status, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo sdk: _tagEOS_RTCAudio_AudioOutputStateCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioOutputState"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
