import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ContinuanceToken_ToStringTests: XCTestCase {
    public func testEOS_ContinuanceToken_ToString_Null() throws {
        TestGlobals.reset()
        __on_EOS_ContinuanceToken_ToString = { ContinuanceToken, OutBuffer, InOutBufferLength in
            XCTAssertNil(ContinuanceToken)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_ContinuanceToken_ToString")
            return .init(rawValue: .zero)! }
        let result: String? = try SwiftEOS_ContinuanceToken_ToString(ContinuanceToken: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ContinuanceToken_ToString"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
