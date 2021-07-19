import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_CopyPermissionByIndexTests: XCTestCase {
    public func testEOS_KWS_CopyPermissionByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_KWS_CopyPermissionByIndex = { Handle, Options, OutPermission in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Index, .zero)
            XCTAssertNil(OutPermission)
            TestGlobals.sdkReceived.append("EOS_KWS_CopyPermissionByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_KWS_PermissionStatus? = try object.CopyPermissionByIndex(
            LocalUserId: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_KWS_CopyPermissionByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
