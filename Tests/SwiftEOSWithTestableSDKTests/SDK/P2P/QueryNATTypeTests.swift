import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_QueryNATTypeTests: XCTestCase {
    public func testEOS_P2P_QueryNATType_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_QueryNATType = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_P2P_QueryNATType") }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryNATType(CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertEqual(arg0.NATType, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") })
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_QueryNATType"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
