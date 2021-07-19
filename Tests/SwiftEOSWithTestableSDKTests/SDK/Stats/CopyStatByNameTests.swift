import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_CopyStatByNameTests: XCTestCase {
    public func testEOS_Stats_CopyStatByName_Null() throws {
        TestGlobals.reset()
        __on_EOS_Stats_CopyStatByName = { Handle, Options, OutStat in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(Options!.pointee.Name)
            XCTAssertNil(OutStat)
            TestGlobals.sdkReceived.append("EOS_Stats_CopyStatByName")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Stats_Stat? = try object.CopyStatByName(
            TargetUserId: nil,
            Name: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Stats_CopyStatByName"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
