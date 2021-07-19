import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetHostAddressTests: XCTestCase {
    public func testEOS_SessionModification_SetHostAddress_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_SetHostAddress = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.HostAddress)
            TestGlobals.sdkReceived.append("EOS_SessionModification_SetHostAddress")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetHostAddress(HostAddress: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_SetHostAddress"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
