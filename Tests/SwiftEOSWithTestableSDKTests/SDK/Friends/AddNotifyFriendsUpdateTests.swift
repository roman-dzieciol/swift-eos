import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_AddNotifyFriendsUpdateTests: XCTestCase {
    public func testEOS_Friends_AddNotifyFriendsUpdate_Null() throws {
        TestGlobals.reset()
        __on_EOS_Friends_AddNotifyFriendsUpdate = { Handle, Options, ClientData, FriendsUpdateHandler in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            FriendsUpdateHandler?(nil)
            TestGlobals.sdkReceived.append("EOS_Friends_AddNotifyFriendsUpdate")
            return .zero }
        let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Friends_OnFriendsUpdateInfo> = try object.AddNotifyFriendsUpdate(FriendsUpdateHandler: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                XCTAssertEqual(arg0.PreviousStatus, .init(rawValue: .zero)!)
                XCTAssertEqual(arg0.CurrentStatus, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("FriendsUpdateHandler") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Friends_OnFriendsUpdateInfo sdk: _tagEOS_Friends_OnFriendsUpdateInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Friends_AddNotifyFriendsUpdate"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["FriendsUpdateHandler"])
    }
}
