
# Xcode-Templates-MVVM-C
Provide boiler plate code for MVVM-C architecture

## Libraries
Following libraries are used in this template 
1. RxSwift
2. RxFlow
3. RxRelay
4. RxCocoa 5. Reusable 6. Result
7. Moya

## Modules/Frameworks
Following frameworks are used which must be created by user
1. Store (Created by user).

To Store contains web-services and data models for the project

2. Utilities(provided)

Utilities contains extensions and helper classes.

[https://github.com/mansoor92/Utilities](https://github.com/mansoor92/Utilities)

## Repo Template
Creates single file which contains
1. Service
Contains methods to perform operations. e.g login, signup
2. DataSource Protocol
Provide a common struct for different data sources e.g RemoteDataSource,DummyDataSource, TestDataSource. It is useful when writing tests
3. RemoteSource
Send Network requests to server 

## V+VM Template
### 1. StoryboardSceneBased
It creates viewController and viewModel. Storyboard should be created by user. It contains two files
1. ViewController
2.  ViewModel

### 2. StoryboardBased
It creates viewController, viewModel and storyboard. In this case Storyboard is used only for a single viewController. It contains three files
1. ViewController	
2. ViewModel
3. Storyboard

### 3. Fullcode
It creates viewController and viewModel. In this case view is created in code. It contains two files
1. ViewController 
2. ViewModel
