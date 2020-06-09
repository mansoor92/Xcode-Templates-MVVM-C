//  ___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa
import Utilities
import Reusable

final class ___FILEBASENAMEASIDENTIFIER___: BaseViewController, ViewModelBased {

	// MARK: Subviews
	let <#type name#>: <#type name#> = {
		let view = <#type name#>()
		return view
	}()

	// MARK: Variables
	var viewModel: ___VARIABLE_productName:identifier___ViewModel!

	//MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
		customUI()
		bindViewModel()
    }

	//MARK: UI
	private func customUI() {
		self.view.backgroundColor = UIColor.white
		//Add Subviews
		self.view.addSubviews(
		)

		//Add Constraints
		setupLayout()
	}

	// Adds constraints to subviews
	private func setupLayout() {

		guard let parent = self.view else { return }

		//<#type name#>
		<#type name#>.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			logo.topAnchor.constraint(equalTo: parent.topAnchor, constant: 77),
			logo.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
			parent.trailingAnchor.constraint(equalTo: logo.trailingAnchor),
			logo.heightAnchor.constraint(equalToConstant: 90),
			parent.bottomAnchor.constraint(greaterThanOrEqualTo: fieldsView.bottomAnchor, constant: 16)
			])
	}

	//MARK: Bind ViewModel
	private func bindViewModel() {
		//Input

		//Output

		//Loading
		bindLoading()

		//Error
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


