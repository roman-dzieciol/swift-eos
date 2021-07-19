import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_SetDataTests: XCTestCase {
    public func testEOS_PresenceModification_SetData_Null() throws {
        TestGlobals.reset()
        __on_EOS_PresenceModification_SetData = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.RecordsCount, .zero)
            XCTAssertNil(Options!.pointee.Records)
            TestGlobals.sdkReceived.append("EOS_PresenceModification_SetData")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetData(Records: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PresenceModification_SetData"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
