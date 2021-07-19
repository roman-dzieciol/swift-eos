import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sanctions_GetPlayerSanctionCountTests: XCTestCase {
    public func testEOS_Sanctions_GetPlayerSanctionCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sanctions_GetPlayerSanctionCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_Sanctions_GetPlayerSanctionCount")
            return .zero }
        let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetPlayerSanctionCount(TargetUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sanctions_GetPlayerSanctionCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
