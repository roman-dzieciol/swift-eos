import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetPermissionLevelTests: XCTestCase {
    public func testEOS_SessionModification_SetPermissionLevel_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_SetPermissionLevel = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.PermissionLevel, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_SessionModification_SetPermissionLevel")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetPermissionLevel(PermissionLevel: .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_SetPermissionLevel"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
