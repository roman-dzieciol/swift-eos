import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_GetPermissionsCountTests: XCTestCase {
    public func testEOS_KWS_GetPermissionsCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_KWS_GetPermissionsCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_KWS_GetPermissionsCount")
            return .zero }
        let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetPermissionsCount(LocalUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_KWS_GetPermissionsCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
