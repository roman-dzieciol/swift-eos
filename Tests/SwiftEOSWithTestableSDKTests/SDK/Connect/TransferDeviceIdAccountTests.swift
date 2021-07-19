import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_TransferDeviceIdAccountTests: XCTestCase {
    public func testEOS_Connect_TransferDeviceIdAccount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_TransferDeviceIdAccount = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.PrimaryLocalUserId)
            XCTAssertNil(Options!.pointee.LocalDeviceUserId)
            XCTAssertNil(Options!.pointee.ProductUserIdToPreserve)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Connect_TransferDeviceIdAccount") }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.TransferDeviceIdAccount(
            PrimaryLocalUserId: nil,
            LocalDeviceUserId: nil,
            ProductUserIdToPreserve: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_TransferDeviceIdAccount"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
