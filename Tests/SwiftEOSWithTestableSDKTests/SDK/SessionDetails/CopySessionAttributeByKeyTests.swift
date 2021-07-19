import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopySessionAttributeByKeyTests: XCTestCase {
    public func testEOS_SessionDetails_CopySessionAttributeByKey_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionDetails_CopySessionAttributeByKey = { Handle, Options, OutSessionAttribute in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.AttrKey)
            XCTAssertNil(OutSessionAttribute)
            TestGlobals.sdkReceived.append("EOS_SessionDetails_CopySessionAttributeByKey")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_SessionDetails_Attribute? = try object.CopySessionAttributeByKey(AttrKey: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByKey"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
