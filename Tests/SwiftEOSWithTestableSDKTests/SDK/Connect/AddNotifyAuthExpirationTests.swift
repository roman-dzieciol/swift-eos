import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_AddNotifyAuthExpirationTests: XCTestCase {
    public func testEOS_Connect_AddNotifyAuthExpiration_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_AddNotifyAuthExpiration = { Handle, Options, ClientData, Notification in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            Notification?(nil)
            TestGlobals.sdkReceived.append("EOS_Connect_AddNotifyAuthExpiration")
            return .zero }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Connect_AuthExpirationCallbackInfo> = try object.AddNotifyAuthExpiration(Notification: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("Notification") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Connect_AuthExpirationCallbackInfo sdk: _tagEOS_Connect_AuthExpirationCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_AddNotifyAuthExpiration"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["Notification"])
    }
}
