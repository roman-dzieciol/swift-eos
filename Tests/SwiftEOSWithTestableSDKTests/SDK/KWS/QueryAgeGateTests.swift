import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_QueryAgeGateTests: XCTestCase {
    public func testEOS_KWS_QueryAgeGate_Null() throws {
        TestGlobals.reset()
        __on_EOS_KWS_QueryAgeGate = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_KWS_QueryAgeGate") }
        let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryAgeGate(CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.CountryCode)
                XCTAssertEqual(arg0.AgeOfConsent, .zero)
                TestGlobals.swiftReceived.append("CompletionDelegate") })
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_KWS_QueryAgeGate"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
