import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetNATTypeTests: XCTestCase {
    public func testEOS_P2P_GetNATType_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_GetNATType = { Handle, Options, OutNATType in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(OutNATType)
            TestGlobals.sdkReceived.append("EOS_P2P_GetNATType")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ENATType? = try object.GetNATType()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_GetNATType"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
