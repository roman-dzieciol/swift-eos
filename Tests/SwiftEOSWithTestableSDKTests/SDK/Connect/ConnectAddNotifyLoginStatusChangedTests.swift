import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_AddNotifyLoginStatusChangedTests: XCTestCase {
    public func testEOS_Connect_AddNotifyLoginStatusChanged_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_AddNotifyLoginStatusChanged = { Handle, Options, ClientData, Notification in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            Notification?(nil)
            TestGlobals.sdkReceived.append("EOS_Connect_AddNotifyLoginStatusChanged")
            return .zero }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Connect_LoginStatusChangedCallbackInfo> = try object.AddNotifyLoginStatusChanged(Notification: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.PreviousStatus, .init(rawValue: .zero)!)
                XCTAssertEqual(arg0.CurrentStatus, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("Notification") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Connect_LoginStatusChangedCallbackInfo sdk: _tagEOS_Connect_LoginStatusChangedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_AddNotifyLoginStatusChanged"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["Notification"])
    }
}
