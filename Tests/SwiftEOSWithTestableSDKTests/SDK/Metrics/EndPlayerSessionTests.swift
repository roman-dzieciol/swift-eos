import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Metrics_EndPlayerSessionTests: XCTestCase {
    public func testEOS_Metrics_EndPlayerSession_Null() throws {
        TestGlobals.reset()
        __on_EOS_Metrics_EndPlayerSession = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.AccountId.Epic)
            XCTAssertNil(Options!.pointee.AccountId.External)
            TestGlobals.sdkReceived.append("EOS_Metrics_EndPlayerSession")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Metrics_Actor = SwiftEOS_Metrics_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.EndPlayerSession(
            AccountIdType: .init(rawValue: .zero)!,
            AccountId: .init()
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Metrics_EndPlayerSession"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
