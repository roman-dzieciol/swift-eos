import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_SetParameterTests: XCTestCase {
    public func testEOS_SessionSearch_SetParameter_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionSearch_SetParameter = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Parameter)
            XCTAssertEqual(Options!.pointee.ComparisonOp, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_SessionSearch_SetParameter")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetParameter(
            Parameter: nil,
            ComparisonOp: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionSearch_SetParameter"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
