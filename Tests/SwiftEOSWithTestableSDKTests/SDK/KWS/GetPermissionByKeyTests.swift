import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_GetPermissionByKeyTests: XCTestCase {
    public func testEOS_KWS_GetPermissionByKey_Null() throws {
        TestGlobals.reset()
        __on_EOS_KWS_GetPermissionByKey = { Handle, Options, OutPermission in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.Key)
            XCTAssertNil(OutPermission)
            TestGlobals.sdkReceived.append("EOS_KWS_GetPermissionByKey")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_EKWSPermissionStatus? = try object.GetPermissionByKey(
            LocalUserId: nil,
            Key: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_KWS_GetPermissionByKey"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
