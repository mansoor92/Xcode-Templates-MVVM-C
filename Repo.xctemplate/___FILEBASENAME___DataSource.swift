//  ___FILEHEADER___

import Foundation
import RxSwift
import Result
import Moya

final class ___VARIABLE_productName:identifier___RemoteSource:  ___FILEBASENAMEASIDENTIFIER___ {

	init() { }


	func requestName(input: <#type name#>) -> PrimitiveSequence<SingleTrait, <#type name#>> {
		let request: PrimitiveSequence<SingleTrait, <#type name#>> =
			NetworkManager.shared.newRequest(method:
				<#type name#>, task: <#type name#>, path: <#type name#>)
		return request
	}
}


