import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopySessionAttributeByIndexTests: XCTestCase {
    public func testEOS_SessionDetails_CopySessionAttributeByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionDetails_CopySessionAttributeByIndex = { Handle, Options, OutSessionAttribute in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.AttrIndex, .zero)
            XCTAssertNil(OutSessionAttribute)
            TestGlobals.sdkReceived.append("EOS_SessionDetails_CopySessionAttributeByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_SessionDetails_Attribute? = try object.CopySessionAttributeByIndex(AttrIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
