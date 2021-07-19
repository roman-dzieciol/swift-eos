import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_RequestPermissionsTests: XCTestCase {
    public func testEOS_KWS_RequestPermissions_Null() throws {
        TestGlobals.reset()
        __on_EOS_KWS_RequestPermissions = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.PermissionKeyCount, .zero)
            XCTAssertNil(Options!.pointee.PermissionKeys)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_KWS_RequestPermissions") }
        let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RequestPermissions(
            LocalUserId: nil,
            PermissionKeys: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_KWS_RequestPermissions"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
