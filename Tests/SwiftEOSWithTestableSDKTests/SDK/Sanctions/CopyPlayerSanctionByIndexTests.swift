import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sanctions_CopyPlayerSanctionByIndexTests: XCTestCase {
    public func testEOS_Sanctions_CopyPlayerSanctionByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sanctions_CopyPlayerSanctionByIndex = { Handle, Options, OutSanction in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.SanctionIndex, .zero)
            XCTAssertNil(OutSanction)
            TestGlobals.sdkReceived.append("EOS_Sanctions_CopyPlayerSanctionByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Sanctions_PlayerSanction? = try object.CopyPlayerSanctionByIndex(
            TargetUserId: nil,
            SanctionIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sanctions_CopyPlayerSanctionByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
