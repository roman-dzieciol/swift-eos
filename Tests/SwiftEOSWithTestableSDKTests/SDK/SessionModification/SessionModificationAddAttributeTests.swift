import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_AddAttributeTests: XCTestCase {
    public func testEOS_SessionModification_AddAttribute_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_AddAttribute = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionAttribute)
            XCTAssertEqual(Options!.pointee.AdvertisementType, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_SessionModification_AddAttribute")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.AddAttribute(
            SessionAttribute: nil,
            AdvertisementType: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_AddAttribute"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
