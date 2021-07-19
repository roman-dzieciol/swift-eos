import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyAudioDevicesChangedTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioDevicesChanged_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_AddNotifyAudioDevicesChanged = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioDevicesChanged")
            return .zero }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo> = try object.AddNotifyAudioDevicesChanged(CompletionDelegate: { arg0 in
                
                TestGlobals.swiftReceived.append("CompletionDelegate") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo sdk: _tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioDevicesChanged"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
