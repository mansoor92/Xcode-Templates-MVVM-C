//  ___FILEHEADER___

import Foundation
import RxSwift
import RxFlow
import Utilities
import RxRelay
import Store

class ___FILEBASENAMEASIDENTIFIER___: ViewModel, Stepper {

	//Input
	struct Input {

	}

	//Output
	struct Output {
		// ErrorProtocol Implementation
		public let onShowLoading = PublishSubject<Bool>()
		public let onShowError = PublishSubject<String>()
	}

	//Services
	struct Services {

	}

	//MARK: Properties
	// Input/Output
	let input: Input
	let output: Output
	//Services
	public let services: Services
	//DisposeBag
	private let disposeBag = DisposeBag()

	public init(services: Services) {
		self.services = services

		// View Model Inputs
		self.input = Input()

		// View Model Outputs
		self.output = Output()

		// bind Input
		bindInput()

		// bind Output
		bindOutput()
	}

	/// Binds user inputs to data
	private func bindInput() {

	}

	/// Binds data to output
	private func bindOutput() {

	}

	//MARK: APICalls
	private func apiCall(input: <#type name#>) {
		output.onShowLoading.onNext(true)
		self.services.repo.request(input: input).subscribe(onSuccess: { [weak self] (model) in
			self?.output.onShowLoading.onNext(false)
		}) { [weak self](error) in
			self?.output.onShowLoading.onNext(false)
			self?.output.onShowError.onNext(error.localizedDescription)

			}.disposed(by: disposeBag)
	}

	///MARK: Navigation
	/// Use this method for navigation. It provide a single point from where steps are generated
	///
	/// - Parameter step: new step
	private func triggerStep(step: <#type name#>) {
		self.step.accept(step)
	}
}

