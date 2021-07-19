import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_RemoveParameterTests: XCTestCase {
    public func testEOS_SessionSearch_RemoveParameter_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionSearch_RemoveParameter = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Key)
            XCTAssertEqual(Options!.pointee.ComparisonOp, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_SessionSearch_RemoveParameter")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RemoveParameter(
            Key: nil,
            ComparisonOp: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionSearch_RemoveParameter"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
