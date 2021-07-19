import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_GetStatsCountTests: XCTestCase {
    public func testEOS_Stats_GetStatsCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Stats_GetStatsCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_Stats_GetStatsCount")
            return .zero }
        let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetStatsCount(TargetUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Stats_GetStatsCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
