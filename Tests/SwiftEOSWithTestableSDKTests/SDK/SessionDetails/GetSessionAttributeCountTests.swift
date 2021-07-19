import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_GetSessionAttributeCountTests: XCTestCase {
    public func testEOS_SessionDetails_GetSessionAttributeCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionDetails_GetSessionAttributeCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_SessionDetails_GetSessionAttributeCount")
            return .zero }
        let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetSessionAttributeCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionDetails_GetSessionAttributeCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
