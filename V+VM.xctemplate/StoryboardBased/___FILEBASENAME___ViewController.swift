//  ___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa
import Utilities
import Reusable
import Store

final class ___FILEBASENAMEASIDENTIFIER___: BaseViewController, ViewModelBased,  StoryboardBased {

	// MARK: Outlets
	@IBOutlet weak private var <#type name#>: <#type name#>!

	// MARK: Properties
	var viewModel: ___VARIABLE_productName:identifier___ViewModel!

	//MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
		customUI()
		bindViewModel()
    }

	//MARK: UI
	private func customUI() {

	}

	//MARK: Binds data to ui
	private func bindViewModel() {
		///Input

		///Output

		///Loading
		bindLoading()

		///Error
		bindError()
	}

	/// Binds errorView to viewModel
	private func bindError() {
		viewModel.output.onShowError.subscribe(onNext: { [weak self] (error) in
			guard let self = self else { return }
			self.view.showMessage(msgInfo: MessageInfo().defaultError(body: error))
		}).disposed(by: disposeBag)
	}

	/// Binds progressView to viewModel
	private func bindLoading() {
		viewModel.output.onShowLoading.subscribe(onNext: { [weak self] (isShow) in
			guard let self = self else { return }
			if isShow {
				_ = self.progressView?.show(fromViewController: self, insets: .zero, animated: true, completion: nil)
			}else {
				self.progressView?.hide(animated: false, completion: nil)
			}
		}).disposed(by: disposeBag)
	}
}


