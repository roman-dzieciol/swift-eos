import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioBeforeRender_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_AddNotifyAudioBeforeRender = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertEqual(Options!.pointee.bUnmixedAudio, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioBeforeRender")
            return .zero }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo> = try object.AddNotifyAudioBeforeRender(
            LocalUserId: nil,
            RoomName: nil,
            bUnmixedAudio: false,
            CompletionDelegate: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RoomName)
                XCTAssertNil(arg0.Buffer)
                XCTAssertNil(arg0.ParticipantId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo sdk: _tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioBeforeRender"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
