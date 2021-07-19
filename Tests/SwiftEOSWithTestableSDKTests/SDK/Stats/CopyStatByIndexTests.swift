import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_CopyStatByIndexTests: XCTestCase {
    public func testEOS_Stats_CopyStatByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Stats_CopyStatByIndex = { Handle, Options, OutStat in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.StatIndex, .zero)
            XCTAssertNil(OutStat)
            TestGlobals.sdkReceived.append("EOS_Stats_CopyStatByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Stats_Stat? = try object.CopyStatByIndex(
            TargetUserId: nil,
            StatIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Stats_CopyStatByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
