import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_AddNotifyLoginStatusChangedTests: XCTestCase {
    public func testEOS_Auth_AddNotifyLoginStatusChanged_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_AddNotifyLoginStatusChanged = { Handle, Options, ClientData, Notification in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            Notification?(nil)
            TestGlobals.sdkReceived.append("EOS_Auth_AddNotifyLoginStatusChanged")
            return .zero }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Auth_LoginStatusChangedCallbackInfo> = try object.AddNotifyLoginStatusChanged(Notification: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.PrevStatus, .init(rawValue: .zero)!)
                XCTAssertEqual(arg0.CurrentStatus, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("Notification") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Auth_LoginStatusChangedCallbackInfo sdk: _tagEOS_Auth_LoginStatusChangedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_AddNotifyLoginStatusChanged"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["Notification"])
    }
}
