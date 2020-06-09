//  ___FILEHEADER___

import Foundation
import RxSwift
import Result
import Moya

//MARK: Protocol
protocol ___VARIABLE_productName:identifier___DataSource {
	func requestName(input: <#type name#>) -> PrimitiveSequence<SingleTrait, <#type name#>>
}

//MARK: Service
final class ___FILEBASENAMEASIDENTIFIER___ {
	let dataSource: ___VARIABLE_productName:identifier___DataSource

	init(dataSource: ___VARIABLE_productName:identifier___DataSource) {
		self.dataSource = dataSource
	}

	func request(input: <#type name#>) -> PrimitiveSequence<SingleTrait, <#type name#>> {

	}
}

//MARK: Remote Source
final class ___VARIABLE_productName:identifier___RemoteSource: ___VARIABLE_productName:identifier___DataSource {

	init() { }


	func requestName(input: <#type name#>) -> PrimitiveSequence<SingleTrait, <#type name#>> {
		let request: PrimitiveSequence<SingleTrait, <#type name#>> =
			NetworkManager.shared.newRequest(method:
				<#type name#>, task: <#type name#>, path: <#type name#>)
		return request
	}
}
