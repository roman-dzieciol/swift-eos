import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_TransferDeviceIdAccountTests: XCTestCase {
    public func testEOS_Connect_TransferDeviceIdAccount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Connect_TransferDeviceIdAccount = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Connect_TransferDeviceIdAccount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_TRANSFERDEVICEIDACCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.PrimaryLocalUserId)
                XCTAssertNil(Options!.pointee.LocalDeviceUserId)
                XCTAssertNil(Options!.pointee.ProductUserIdToPreserve)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Connect_TransferDeviceIdAccountCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
            }
            defer { __on_EOS_Connect_TransferDeviceIdAccount = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            try object.TransferDeviceIdAccount(
                PrimaryLocalUserId: nil,
                LocalDeviceUserId: nil,
                ProductUserIdToPreserve: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_TransferDeviceIdAccount"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_TransferDeviceIdAccount"])
    }
}
