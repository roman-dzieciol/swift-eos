import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Metrics_BeginPlayerSessionTests: XCTestCase {
    public func testEOS_Metrics_BeginPlayerSession_Null() throws {
        TestGlobals.reset()
        __on_EOS_Metrics_BeginPlayerSession = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.AccountId.Epic)
            XCTAssertNil(Options!.pointee.AccountId.External)
            XCTAssertNil(Options!.pointee.DisplayName)
            XCTAssertEqual(Options!.pointee.ControllerType, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.ServerIp)
            XCTAssertNil(Options!.pointee.GameSessionId)
            TestGlobals.sdkReceived.append("EOS_Metrics_BeginPlayerSession")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Metrics_Actor = SwiftEOS_Metrics_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.BeginPlayerSession(
            AccountIdType: .init(rawValue: .zero)!,
            AccountId: .init(),
            DisplayName: nil,
            ControllerType: .init(rawValue: .zero)!,
            ServerIp: nil,
            GameSessionId: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Metrics_BeginPlayerSession"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
